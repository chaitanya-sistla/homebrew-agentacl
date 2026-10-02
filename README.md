# Homebrew tap for AgentACL

[AgentACL](https://github.com/chaitanya-sistla/agentacl): OS-level permissions
for AI coding agents on macOS.

```sh
brew install chaitanya-sistla/agentacl/agentacl
```

Upgrade with `brew upgrade agentacl`. The formula installs the universal
binary from the project's GitHub release, checked against its SHA-256. Each
release is built by GitHub Actions from a tagged commit, with a
build-provenance attestation:

```sh
gh attestation verify "$(brew --cache agentacl)" -R chaitanya-sistla/agentacl
```

Issues and security reports go to the
[main repository](https://github.com/chaitanya-sistla/agentacl).
