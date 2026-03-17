#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SKILLS_DIR="${REPO_ROOT}/skills"

if [[ ! -d "${SKILLS_DIR}" ]]; then
  echo "ERROR: skills directory not found at ${SKILLS_DIR}" >&2
  exit 1
fi

VALIDATOR=""

if command -v skills-ref >/dev/null 2>&1; then
  VALIDATOR="skills-ref"
elif command -v skills >/dev/null 2>&1; then
  VALIDATOR="skills"
elif command -v npx >/dev/null 2>&1; then
  VALIDATOR="npx agent-skills-cli"
else
  echo "ERROR: no external skill validator found." >&2
  echo "Install one of: skills-ref, skills, or agent-skills-cli" >&2
  exit 1
fi

echo "==> Running Agent Skills validator against each local skill"

status=0

while IFS= read -r -d '' skill_dir; do
  echo "==> Validating ${skill_dir#${REPO_ROOT}/}"
  if [[ "${VALIDATOR}" == "skills-ref" ]]; then
    skills-ref validate "${skill_dir}" || status=$?
  elif [[ "${VALIDATOR}" == "skills" ]]; then
    skills validate "${skill_dir}" || status=$?
  else
    npx agent-skills-cli validate "${skill_dir}" || status=$?
  fi
done < <(find "${SKILLS_DIR}" -mindepth 1 -maxdepth 1 -type d -print0 | sort -z)

if [[ "${status}" -ne 0 ]]; then
  echo "OFFICIAL VALIDATION FAILED" >&2
  exit "${status}"
fi

echo "OFFICIAL VALIDATION PASSED"
