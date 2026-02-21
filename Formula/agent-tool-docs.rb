class AgentToolDocs < Formula
  desc "Auto-generate agent-optimized CLI docs from --help output"
  homepage "https://github.com/BrennerSpear/agent-tool-docs"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BrennerSpear/agent-tool-docs/releases/download/v#{version}/agent-tool-docs-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/BrennerSpear/agent-tool-docs/releases/download/v#{version}/agent-tool-docs-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/BrennerSpear/agent-tool-docs/releases/download/v#{version}/agent-tool-docs-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/BrennerSpear/agent-tool-docs/releases/download/v#{version}/agent-tool-docs-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "agent-tool-docs"
    bin.install_symlink "agent-tool-docs" => "tool-docs"
  end

  test do
    assert_match "tool-docs", shell_output("#{bin}/tool-docs --help")
  end
end
