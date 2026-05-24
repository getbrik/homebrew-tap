<p align="center">
  <img src="docs/homebrew-brik.jpg" alt="Homebrew Tap for Brik">
</p>

<p align="center">
  <b>Install Brik with one brew command.</b><br>
  Official Homebrew tap. macOS + Linux. Auto-updated to every Brik release.
</p>

<p align="center">
  <a href="https://github.com/getbrik/homebrew-tap/actions/workflows/ci.yml"><img src="https://github.com/getbrik/homebrew-tap/actions/workflows/ci.yml/badge.svg" alt="CI"></a>
  <a href="https://github.com/getbrik/brik/releases"><img src="https://img.shields.io/github/v/release/getbrik/brik?label=brik" alt="brik version"></a>
  <a href="#installation"><img src="https://img.shields.io/badge/platforms-macOS%20%7C%20Linux-lightgrey" alt="Platforms"></a>
  <a href="https://github.com/getbrik/brik/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MPL--2.0-blue" alt="License"></a>
</p>

This is the official Homebrew tap for [Brik](https://github.com/getbrik/brik), the portable CI/CD pipeline system.

`brew install brik` puts the `brik` CLI on your local machine -- macOS or Linux. The same Bash code path runs locally and inside your CI (GitLab, Jenkins, GitHub Actions), so a local run reproduces what your pipeline does. Once installed you can:

- scaffold a new project (`brik init`)
- validate a `brik.yml` against the schema (`brik validate`)
- check that your environment has the prerequisites (`brik doctor`)
- run any stage or the full pipeline locally (`brik run stage <name>` / `brik run pipeline`)
- inspect what the platform-aware planner would execute for the current commit (`brik plan --explain`)

For the project itself -- the architecture, the fixed flow, the supported stacks, the platform shared libraries -- see the [main Brik repository](https://github.com/getbrik/brik).

## What's in the tap

| Formula | Description | Pinned to | Brings in |
|---------|-------------|-----------|-----------|
| `brik` | Portable CI/CD pipeline system | [brik latest release](https://github.com/getbrik/brik/releases) | bash, yq, jq |

## Installation

```bash
brew tap getbrik/tap
brew install brik
```

Or install directly:

```bash
brew install getbrik/tap/brik
```

## Verify the install

```bash
brik doctor      # checks bash 5+, yq, jq, jv, and stack tools
brik version     # prints the installed Brik version
```

## Next steps

Once installed, jump straight into the Brik repository for what to do next:

- [Getting Started -- Local CLI](https://github.com/getbrik/brik/blob/main/docs/getting-started/local.md) -- run a Brik pipeline on your laptop
- [Getting Started -- GitLab CI](https://github.com/getbrik/brik/blob/main/docs/getting-started/gitlab.md) and [Jenkins](https://github.com/getbrik/brik/blob/main/docs/getting-started/jenkins.md) -- wire Brik into your CI platform
- [Configuration reference](https://github.com/getbrik/brik/blob/main/docs/configuration/overview.md) -- the full `brik.yml` schema
- [Examples](https://github.com/getbrik/brik/tree/main/examples) -- working `brik.yml` files for Node, Java, Python, .NET
- [The Brik README](https://github.com/getbrik/brik#readme) -- what Brik is, the four-layer architecture, and why it exists
- [Full documentation index](https://github.com/getbrik/brik/blob/main/docs/README.md)

## Upgrade

```bash
brew update && brew upgrade brik
```

Each new [Brik release](https://github.com/getbrik/brik/releases) ships with a matching formula bump in this tap. Run `brew update` regularly to stay current.

## Uninstall

```bash
brew uninstall brik
brew untap getbrik/tap  # optional: remove the tap
```

## License

[MPL-2.0](https://github.com/getbrik/brik/blob/main/LICENSE) -- inherited from the [Brik project](https://github.com/getbrik/brik).
