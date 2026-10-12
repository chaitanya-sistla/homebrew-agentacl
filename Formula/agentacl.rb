class Agentacl < Formula
  desc "OS-level permissions for AI coding agents on macOS"
  homepage "https://github.com/chaitanya-sistla/agentacl"
  url "https://github.com/chaitanya-sistla/agentacl/releases/download/v0.7.0/agentacl-0.7.0-macos-universal.tar.gz"
  sha256 "6ee99bb1db2da8e322e98e8d5f0d072ce36962b8dc5320d84860a1389da14194"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "agentacl"
    doc.install "README.md", "CHANGELOG.md"
  end

  def caveats
    <<~EOS
      Start an agent protected:
        agentacl run -- claude
      Open the console:
        agentacl ui

      Claude Code: prefer a token over /login, so the session gets no
      keychain access (see the README's Limitations):
        claude setup-token
        export CLAUDE_CODE_OAUTH_TOKEN=<the token>
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentacl --version")
  end
end
