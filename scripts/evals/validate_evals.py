#!/usr/bin/env python3
"""Strictly validate eval definitions without running model evaluations."""

from __future__ import annotations

import json
import re
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Iterable


SCHEMA_VERSION = 2
SLUG_RE = re.compile(r"^[a-z0-9]+(?:-[a-z0-9]+)*$")
EXPLICIT_SKILL_RE = re.compile(r"\$[a-z0-9][a-z0-9-]*", re.I)
ASSERTION_TYPES = {"structure", "semantic", "forbidden_behavior"}
INPUT_STATES = {"complete", "partial", "conflicting"}
MANAGERS = {"starter-generator", "curated"}
BASE_KEYS = {
    "schema_version", "skill", "source", "notes", "managed_by",
    "should_trigger", "should_not_trigger", "output_structure_checks",
}


@dataclass(frozen=True)
class ValidationResult:
    errors: list[str]
    file_count: int
    curated_count: int
    starter_count: int


def key_errors(
    value: dict[str, Any], required: set[str], optional: set[str], path: str
) -> list[str]:
    errors = []
    if missing := required - value.keys():
        errors.append(f"{path}: missing keys: {', '.join(sorted(missing))}")
    if extra := value.keys() - required - optional:
        errors.append(f"{path}: unknown keys: {', '.join(sorted(extra))}")
    return errors


def text_errors(value: Any, path: str, *, slug: bool = False) -> list[str]:
    if not isinstance(value, str) or not value.strip():
        return [f"{path}: must be a non-empty string"]
    if slug and not SLUG_RE.fullmatch(value):
        return [f"{path}: must be lowercase and hyphenated"]
    return []


def validate_route(value: Any, path: str, *, expected: bool, negative: bool) -> list[str]:
    if not isinstance(value, dict):
        return [f"{path}: must be an object"]
    errors = key_errors(
        value,
        {"prompt", "expected"},
        {"adjacent_skill"} if negative else set(),
        path,
    )
    errors += text_errors(value.get("prompt"), f"{path}.prompt")
    if isinstance(value.get("prompt"), str) and EXPLICIT_SKILL_RE.search(value["prompt"]):
        errors.append(f"{path}.prompt: test natural routing, not an explicit $skill invocation")
    if value.get("expected") is not expected:
        errors.append(f"{path}.expected: must be {expected!r}")
    if "adjacent_skill" in value:
        errors += text_errors(value["adjacent_skill"], f"{path}.adjacent_skill", slug=True)
    return errors


def validate_assertion(value: Any, path: str) -> list[str]:
    if not isinstance(value, dict):
        return [f"{path}: must be an object"]
    errors = key_errors(
        value, {"name", "type", "description", "critical"}, set(), path
    )
    errors += text_errors(value.get("name"), f"{path}.name", slug=True)
    if value.get("type") not in ASSERTION_TYPES:
        errors.append(f"{path}.type: must be one of {', '.join(sorted(ASSERTION_TYPES))}")
    errors += text_errors(value.get("description"), f"{path}.description")
    if not isinstance(value.get("critical"), bool):
        errors.append(f"{path}.critical: must be a boolean")
    return errors


def validate_scenario(value: Any, path: str) -> list[str]:
    if not isinstance(value, dict):
        return [f"{path}: must be an object"]
    errors = key_errors(
        value, {"id", "input_state", "prompt", "assertions"}, {"files"}, path
    )
    errors += text_errors(value.get("id"), f"{path}.id", slug=True)
    if value.get("input_state") not in INPUT_STATES:
        errors.append(f"{path}.input_state: must be one of {', '.join(sorted(INPUT_STATES))}")
    errors += text_errors(value.get("prompt"), f"{path}.prompt")

    assertions = value.get("assertions")
    if not isinstance(assertions, list) or not assertions:
        errors.append(f"{path}.assertions: must be a non-empty list")
    else:
        for index, assertion in enumerate(assertions):
            errors += validate_assertion(assertion, f"{path}.assertions[{index}]")
        names = [item.get("name") for item in assertions if isinstance(item, dict)]
        if len(names) != len(set(names)):
            errors.append(f"{path}.assertions: names must be unique")
    files = value.get("files")
    if files is not None and (
        not isinstance(files, list)
        or not all(isinstance(item, str) and item.strip() for item in files)
    ):
        errors.append(f"{path}.files: must be a list of non-empty strings")
    return errors


def validate_document(document: Any, *, path: str = "<document>") -> list[str]:
    if not isinstance(document, dict):
        return [f"{path}: top level must be an object"]
    errors = key_errors(
        document,
        BASE_KEYS,
        {"task_scenarios"},
        path,
    )
    if document.get("schema_version") != SCHEMA_VERSION:
        errors.append(f"{path}.schema_version: must be {SCHEMA_VERSION}")
    skill = document.get("skill")
    errors += text_errors(skill, f"{path}.skill", slug=True)
    if document.get("source") != f"skills/{skill}/SKILL.md":
        errors.append(f"{path}.source: must be 'skills/{skill}/SKILL.md'")
    errors += text_errors(document.get("notes"), f"{path}.notes")
    if document.get("managed_by") not in MANAGERS:
        errors.append(f"{path}.managed_by: must be one of {', '.join(sorted(MANAGERS))}")

    for field, expected, negative in (
        ("should_trigger", True, False),
        ("should_not_trigger", False, True),
    ):
        cases = document.get(field)
        if not isinstance(cases, list) or len(cases) < 3:
            errors.append(f"{path}.{field}: must contain at least 3 cases")
            continue
        for index, case in enumerate(cases):
            errors += validate_route(
                case, f"{path}.{field}[{index}]", expected=expected, negative=negative
            )
        prompts = [item.get("prompt") for item in cases if isinstance(item, dict)]
        if len(prompts) != len(set(prompts)):
            errors.append(f"{path}.{field}: prompts must be unique")

    checks = document.get("output_structure_checks")
    if not isinstance(checks, list) or not checks:
        errors.append(f"{path}.output_structure_checks: must be a non-empty list")
        checks = []
    for index, check in enumerate(checks):
        errors += validate_assertion(check, f"{path}.output_structure_checks[{index}]")
    names = [item.get("name") for item in checks if isinstance(item, dict)]
    if len(names) != len(set(names)):
        errors.append(f"{path}.output_structure_checks: names must be unique")

    scenarios = document.get("task_scenarios")
    if scenarios is not None:
        if not isinstance(scenarios, list) or not scenarios:
            errors.append(f"{path}.task_scenarios: omit it or use a non-empty list")
            scenarios = []
        for index, scenario in enumerate(scenarios):
            errors += validate_scenario(scenario, f"{path}.task_scenarios[{index}]")
        ids = [item.get("id") for item in scenarios if isinstance(item, dict)]
        if len(ids) != len(set(ids)):
            errors.append(f"{path}.task_scenarios: ids must be unique")

    return errors


def validate_repository(eval_dir: Path) -> ValidationResult:
    paths = sorted(eval_dir.glob("*.json"))
    known_skills = {path.stem for path in paths}
    repo_root = eval_dir.parents[2]
    errors: list[str] = []
    curated = starter = 0
    for file_path in paths:
        try:
            document = json.loads(file_path.read_text())
        except (OSError, json.JSONDecodeError) as exc:
            errors.append(f"{file_path}: invalid JSON: {exc}")
            continue
        errors += validate_document(document, path=str(file_path))
        if isinstance(document, dict):
            if document.get("skill") != file_path.stem:
                errors.append(f"{file_path}: skill must match the file name")
            source = document.get("source")
            if isinstance(source, str) and not (repo_root / source).is_file():
                errors.append(f"{file_path}: source does not exist: {source}")
            for case in document.get("should_not_trigger", []):
                adjacent = case.get("adjacent_skill") if isinstance(case, dict) else None
                if adjacent and adjacent not in known_skills:
                    errors.append(f"{file_path}: unknown adjacent skill {adjacent!r}")
            for scenario in document.get("task_scenarios", []):
                if isinstance(scenario, dict):
                    for fixture in scenario.get("files", []):
                        if isinstance(fixture, str) and not (repo_root / fixture).is_file():
                            errors.append(f"{file_path}: scenario file does not exist: {fixture}")
            curated += document.get("managed_by") == "curated"
            starter += document.get("managed_by") == "starter-generator"
    if not paths:
        errors.append(f"{eval_dir}: no eval definitions found")
    return ValidationResult(errors, len(paths), curated, starter)


def format_errors(errors: Iterable[str]) -> str:
    return "\n".join(f"- {error}" for error in errors)


def main() -> int:
    result = validate_repository(Path(__file__).resolve().parent / "skills")
    if result.errors:
        print("Eval definition validation failed:\n" + format_errors(result.errors))
        return 1
    print(
        f"Eval definition validation passed: {result.file_count} files "
        f"({result.curated_count} curated, {result.starter_count} starter). "
        "No model evaluations were run."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
