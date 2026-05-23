# Security Policy

## Scope

This repository is the **Homebrew tap** for the Brik CLI. It ships only Homebrew formulas under `Formula/` that reference release artifacts published from the [`brik`](https://github.com/getbrik/brik) repository.

The tap itself contains no executable code. The trust boundary is the formula content (URL, SHA256, install instructions) and the upstream release artifacts it points to.

## Reporting a Vulnerability

If you discover that:

- a formula points to a wrong or tampered release artifact,
- a formula has a SHA256 mismatch with the upstream release,
- a formula installs unexpected files outside Homebrew's prefix,

report it privately:

1. Go to https://github.com/getbrik/homebrew-tap/security/advisories/new
2. Provide the formula name, the affected version, and the discrepancy details.

Do not open public issues for security reports.

For vulnerabilities **in the Brik CLI itself**, please report under https://github.com/getbrik/brik/security/advisories/new instead.

## In Scope

- Formula files under `Formula/`.
- Any installer script invoked by a formula's `install` block.

## Out of Scope

- Vulnerabilities in Homebrew itself (report upstream).
- Vulnerabilities in the Brik CLI runtime (report under the `brik` repo).
- Issues with macOS-specific behavior that are not formula bugs.

## Disclosure Policy

Coordinated disclosure. A fixed formula is published as a patch release of the upstream Brik version it references. A GitHub Security Advisory (GHSA) is opened on this repository when applicable.
