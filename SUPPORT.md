# Support

This repository is maintained as a public skill pack for enablement workflows.

## Support Model

- maintenance is best effort
- issues and focused improvements are welcome
- no response-time or resolution SLA is provided
- support covers the repository's skills, documentation, examples, validation, and packaged Claude bundles

Vendor configuration, tenant permissions, third-party installers, and host-specific behavior outside this repository may require support from the relevant product owner.

## Before Opening An Issue

1. Confirm you are using the latest published release or current default branch.
2. Run `bash scripts/validate.sh` for a repository or packaging problem.
3. Run `skills-ref validate skills/<skill-name>` for a portable-format problem.
4. Check whether the behavior depends on a tenant setting, permission, current vendor capability, or third-party installer.

Structural validation does not execute behavior scenarios. For a routing or output-quality problem, include the prompt and enough anonymized source context to reproduce it.

## Open An Issue

Use the repository [issue tracker](https://github.com/nthnclrk/enablement-skills/issues) for non-sensitive bugs, documentation gaps, and skill requests.

A useful report includes:

- the affected skill, system playbook, bundle, or command
- the repository version or commit
- the intended audience and deliverable
- the exact prompt or steps to reproduce
- expected and actual behavior
- validation output where relevant
- a minimal anonymized input sample

Remove credentials, customer data, and confidential company information before posting.

## Security Issues

Use the private process in [SECURITY.md](SECURITY.md). Do not disclose a vulnerability, secret, or sensitive dataset in a public issue.

## Use And Responsibility

The repository is distributed under the MIT license and provided on an `as is` basis, without warranty. Users are responsible for reviewing outputs and deciding what to publish, automate, send, or act on. Maintainers and contributors do not assume liability for losses, damages, or business outcomes resulting from use, misuse, or reliance on the repository or its outputs.
