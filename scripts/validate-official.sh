#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SKILLS_DIR="${REPO_ROOT}/skills"
SKILLS_REF_VERSION="0.1.1"

if [[ ! -d "${SKILLS_DIR}" ]]; then
  echo "ERROR: skills directory not found at ${SKILLS_DIR}" >&2
  exit 1
fi

if command -v skills-ref >/dev/null 2>&1; then
  validator_mode="skills-ref"
elif command -v agentskills >/dev/null 2>&1; then
  validator_mode="agentskills"
elif [[ "${ENABLE_UVX_SKILLS_REF_FALLBACK:-0}" == "1" ]]; then
  if ! command -v uvx >/dev/null 2>&1; then
    echo "ERROR: ENABLE_UVX_SKILLS_REF_FALLBACK=1 but uvx is unavailable." >&2
    exit 1
  fi
  validator_mode="uvx"
else
  echo "ERROR: skills-ref is required for Agent Skills specification validation." >&2
  echo "Install the pinned CI version with: python3 -m pip install skills-ref==${SKILLS_REF_VERSION}" >&2
  echo "Or opt into the pinned one-shot fallback with: ENABLE_UVX_SKILLS_REF_FALLBACK=1 bash scripts/validate-official.sh" >&2
  exit 1
fi

run_validator() {
  local skill_dir="$1"

  if [[ "${validator_mode}" == "skills-ref" ]]; then
    skills-ref validate "${skill_dir}"
    return
  fi

  if [[ "${validator_mode}" == "agentskills" ]]; then
    agentskills validate "${skill_dir}"
    return
  fi

  if [[ "${validator_mode}" == "uvx" ]]; then
    uvx --from "skills-ref==${SKILLS_REF_VERSION}" agentskills validate "${skill_dir}"
    return
  fi
}

echo "==> Running skills-ref against each canonical skill"

status=0
for skill_dir in "${SKILLS_DIR}"/*; do
  [[ -d "${skill_dir}" ]] || continue
  echo "==> Validating ${skill_dir#${REPO_ROOT}/}"
  if ! run_validator "${skill_dir}"; then
    status=1
  fi
done

if [[ "${status}" -ne 0 ]]; then
  echo "OFFICIAL VALIDATION FAILED" >&2
  exit "${status}"
fi

echo "OFFICIAL VALIDATION PASSED"
