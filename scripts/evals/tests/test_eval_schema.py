from __future__ import annotations

import copy
import sys
import unittest
from pathlib import Path


EVALS_DIR = Path(__file__).resolve().parents[1]
REPO_ROOT = EVALS_DIR.parents[1]
sys.path.insert(0, str(EVALS_DIR))

from validate_evals import validate_document  # noqa: E402
from generate_starter_evals import generate_for_skill  # noqa: E402


def assertion(name: str = "sample-skill-output-01") -> dict:
    return {
        "name": name,
        "type": "semantic",
        "description": "The output meets this substantive requirement.",
        "critical": True,
    }


def document() -> dict:
    return {
        "schema_version": 2,
        "skill": "sample-skill",
        "source": "skills/sample-skill/SKILL.md",
        "notes": "A compact definition used to test strict schema validation.",
        "managed_by": "starter-generator",
        "should_trigger": [
            {"prompt": f"Prepare the sample deliverable for case {index}.", "expected": True}
            for index in range(1, 4)
        ],
        "should_not_trigger": [
            {
                "prompt": f"Prepare the adjacent deliverable for case {index}.",
                "expected": False,
                "adjacent_skill": "adjacent-skill",
            }
            for index in range(1, 4)
        ],
        "output_structure_checks": [assertion()],
    }


class EvalSchemaTests(unittest.TestCase):
    def validate(self, value: dict) -> list[str]:
        return validate_document(value, path="sample-skill.json")

    def test_compact_structural_definition_passes(self):
        self.assertEqual(self.validate(document()), [])

    def test_unknown_top_level_key_fails(self):
        value = document()
        value["unexpected"] = True
        errors = self.validate(value)
        self.assertTrue(any("unknown keys: unexpected" in error for error in errors))

    def test_explicit_invocation_is_not_a_routing_case(self):
        value = document()
        value["should_trigger"][0]["prompt"] = "Use $sample-skill for this request."
        errors = self.validate(value)
        self.assertTrue(any("natural routing" in error for error in errors))

    def test_optional_task_scenario_passes(self):
        value = document()
        value["managed_by"] = "curated"
        value["task_scenarios"] = [
            {
                "id": "sample-skill-partial-input",
                "input_state": "partial",
                "prompt": "Use these incomplete notes and label unsupported assumptions.",
                "files": ["scripts/evals/fixtures/sample-notes.md"],
                "assertions": [assertion("sample-skill-no-fabrication")],
            }
        ]
        self.assertEqual(self.validate(value), [])

    def test_nested_unknown_key_fails(self):
        value = copy.deepcopy(document())
        value["output_structure_checks"][0]["phrase"] = "brittle wording"
        errors = self.validate(value)
        self.assertTrue(any("unknown keys: phrase" in error for error in errors))

    def test_generated_starter_is_compact_and_valid(self):
        value = generate_for_skill("battlecard-builder")
        self.assertEqual(
            validate_document(value, path="battlecard-builder.json"), []
        )
        self.assertNotIn("task_scenarios", value)
        self.assertEqual(len(value["output_structure_checks"]), 2)
        self.assertEqual(len(value["should_trigger"]), 3)
        self.assertEqual(len(value["should_not_trigger"]), 3)


if __name__ == "__main__":
    unittest.main()
