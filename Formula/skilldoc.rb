class Skilldoc < Formula
  desc "Generate agent-optimized skill docs from CLI --help output"
  homepage "https://github.com/tychohq/skilldoc"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tychohq/skilldoc/releases/download/v0.2.1/skilldoc-darwin-arm64.tar.gz"
      sha256 "5c49a01719d7cebc6a9710503f2154faeaa1b0d8b0342a99c2020e966cb3dc27"
    else
      url "https://github.com/tychohq/skilldoc/releases/download/v0.2.1/skilldoc-darwin-x64.tar.gz"
      sha256 "503e28d5f5f6374a5aac26a0fd22f0991987a056079e236f43aa7f2eb2c0da0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tychohq/skilldoc/releases/download/v0.2.1/skilldoc-linux-arm64.tar.gz"
      sha256 "ce83330d9bc55e19a563b4c9f78d115f99d0fa06b41dfe9784656b5fd5517f1b"
    else
      url "https://github.com/tychohq/skilldoc/releases/download/v0.2.1/skilldoc-linux-x64.tar.gz"
      sha256 "7bd686c31abe299db1c804cec29e62ee62a960ebf45c3f13adae0a906b6f9250"
    end
  end

  def install
    bin.install "skilldoc"
  end

  test do
    assert_match "skilldoc", shell_output("#{bin}/skilldoc --help")
  end
end
