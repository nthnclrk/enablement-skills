#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
TEMPLATE_DIR="${REPO_ROOT}/templates/skill"
SKILLS_DIR="${REPO_ROOT}/skills"

usage() {
  cat <<'EOF'
Usage: bash scripts/new-skill.sh <skill-name>

Creates:
  skills/<skill-name>/SKILL.md
  skills/<skill-name>/agents/openai.yaml

Then refreshes starter eval artifacts.
EOF
}

if [[ "${1:-}" == "" ]]; then
  usage
  exit 1
fi

SKILL_NAME="${1}"

if [[ ! "${SKILL_NAME}" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  echo "ERROR: skill name must be lowercase kebab-case." >&2
  exit 1
fi

SKILL_DIR="${SKILLS_DIR}/${SKILL_NAME}"

if [[ -e "${SKILL_DIR}" ]]; then
  echo "ERROR: ${SKILL_DIR} already exists." >&2
  exit 1
fi

DISPLAY_NAME="$(python3 - "${SKILL_NAME}" <<'PY'
import sys
name = sys.argv[1]
print(" ".join(part.capitalize() for part in name.split("-")))
PY
)"

SHORT_DESCRIPTION="[REQUIRED] Replace with a real 25-64 char summary"
DEFAULT_PROMPT="[REQUIRED] Replace with a real default prompt that references \$${SKILL_NAME}."

mkdir -p "${SKILL_DIR}/agents"

sed \
  -e "s/{{SKILL_NAME}}/${SKILL_NAME}/g" \
  -e "s/{{DISPLAY_NAME}}/${DISPLAY_NAME}/g" \
  "${TEMPLATE_DIR}/SKILL.md.tmpl" > "${SKILL_DIR}/SKILL.md"

sed \
  -e "s/{{DISPLAY_NAME}}/${DISPLAY_NAME}/g" \
  -e "s/{{SHORT_DESCRIPTION}}/${SHORT_DESCRIPTION}/g" \
  -e "s/{{DEFAULT_PROMPT}}/${DEFAULT_PROMPT//\//\\/}/g" \
  "${TEMPLATE_DIR}/openai.yaml.tmpl" > "${SKILL_DIR}/agents/openai.yaml"

python3 "${REPO_ROOT}/scripts/evals/generate_starter_evals.py" --generate

cat <<EOF
Created skill scaffold:
  ${SKILL_DIR}

Next steps:
  1. Replace the [REQUIRED] markers in ${SKILL_DIR}/SKILL.md. Read templates/skill/README.md. Heading names may change.
  2. Edit ${SKILL_DIR}/agents/openai.yaml
  3. Run: bash scripts/validate.sh
  4. Optionally run: bash scripts/validate-official.sh
  5. Curate scripts/evals/skills/${SKILL_NAME}.json. Do not treat the starter as behavior evidence.
EOF
