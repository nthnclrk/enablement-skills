# Security Policy

## Scope

This repository primarily contains skill instructions, workflow documentation, packaging metadata, examples, and maintenance scripts. It does not intentionally store credentials, access tokens, customer exports, or tenant-specific configuration.

Security concerns can still arise from:

- exposed credentials, personal data, or customer information
- packaging or scripts that perform unexpected or unsafe actions
- instructions that encourage insecure handling of exports or secrets
- external-write workflows that do not require clear user approval
- examples that expose real customer or company data
- dependencies or install guidance that resolve to an unexpected source

## Supported Versions

Security fixes target the latest published release and the current default branch. Older tags may not receive backported fixes.

## Report A Vulnerability

Do not open a public issue containing sensitive details.

1. Open the repository's [Security page](https://github.com/nthnclrk/enablement-skills/security).
2. Use **Report a vulnerability** if private vulnerability reporting is available.
3. If the private option is unavailable, open a minimal public issue requesting a private contact channel. Do not include the vulnerability, affected paths, or reproduction details in that issue.

Include:

- the affected file, skill, bundle, or release
- the impact and likely exposure
- reproduction steps or a minimal proof of concept
- any known mitigation
- whether credentials or customer data may have been exposed

Do not include active secrets in the report. Revoke or rotate an exposed credential through its owning system rather than waiting for a repository change.

## Maintainer Response

This project is maintained on a best-effort basis. A report will be assessed for scope, impact, and remediation. Please allow reasonable time to investigate and prepare a fix before public disclosure.

## Repository Safety Requirements

- Keep external-system behavior read-only by default.
- Require explicit user approval before external writes, sends, publishing, or destructive actions.
- Do not commit real customer exports, credentials, or tenant configuration.
- Use synthetic or fully anonymized examples.
- Treat system playbooks as workflow guidance, not authorization to access or modify a tenant.
- Verify installer, dependency, and vendor behavior against current primary documentation before a release.
