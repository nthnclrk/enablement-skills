# Security Policy

## Scope

This repo primarily contains:
- skill definitions
- workflow documentation
- packaging metadata
- example files

It does not intentionally store secrets, access tokens, customer exports, or tenant-specific configuration.

## Reporting A Security Issue

If you discover a security issue in this repo or its packaging:
- do not open a public issue with sensitive details
- report it privately to the maintainer first

Until a dedicated security inbox exists, use private GitHub communication with the repository owner.

## What Counts As A Security Concern Here

Examples:
- accidental inclusion of credentials, tokens, or customer data
- packaging or script behavior that could cause unsafe writes or destructive actions
- guidance that materially encourages insecure handling of exports or secrets
- example artifacts that expose real customer information

## Maintainer Expectations

- Keep the default posture read-only for external systems.
- Do not commit real customer exports or secrets.
- Remove sensitive data immediately if it is committed by mistake.
- Treat system playbooks as guidance, not permission to automate unsafe operations.

## Disclosure Preference

Please allow reasonable time for review and remediation before public disclosure.
