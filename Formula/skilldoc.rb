class Skilldoc < Formula
  desc "Generate agent-optimized skill docs from CLI --help output"
  homepage "https://github.com/tychohq/skilldoc"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tychohq/skilldoc/releases/download/v#{version}/skilldoc-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/tychohq/skilldoc/releases/download/v#{version}/skilldoc-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tychohq/skilldoc/releases/download/v#{version}/skilldoc-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/tychohq/skilldoc/releases/download/v#{version}/skilldoc-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "skilldoc"
  end

  test do
    assert_match "skilldoc", shell_output("#{bin}/skilldoc --help")
  end
end
