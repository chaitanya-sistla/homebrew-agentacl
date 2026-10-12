class Agentacl < Formula
  desc "OS-level permissions for AI coding agents on macOS"
  homepage "https://github.com/chaitanya-sistla/agentacl"
  url "https://github.com/chaitanya-sistla/agentacl/releases/download/v0.7.1/agentacl-0.7.1-macos-universal.tar.gz"
  sha256 "225698dbd302d2a59a34da9c420770979bb14e47d6ed4329fe10f19a7e238cb0"
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
