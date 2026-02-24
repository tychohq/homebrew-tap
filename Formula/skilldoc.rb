class Skilldoc < Formula
  desc "Generate agent-optimized skill docs from CLI --help output"
  homepage "https://github.com/tychohq/skilldoc"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tychohq/skilldoc/releases/download/v0.3.0/skilldoc-darwin-arm64.tar.gz"
      sha256 "a3691a15844be1734a415b6cc57ff5a1341f0834f245714007bb666fa479f427"
    else
      url "https://github.com/tychohq/skilldoc/releases/download/v0.3.0/skilldoc-darwin-x64.tar.gz"
      sha256 "86563d7e49dcba8f02a0422464522748178cd6dfd2464217ca964877ee93467a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tychohq/skilldoc/releases/download/v0.3.0/skilldoc-linux-arm64.tar.gz"
      sha256 "91a74a2caa1d8db7e9b5102fe412a2b5dcf5187c04b5d4e02cb6a2bef29a0221"
    else
      url "https://github.com/tychohq/skilldoc/releases/download/v0.3.0/skilldoc-linux-x64.tar.gz"
      sha256 "1441ea679360e7f29807e081d277d4b2349d9f5701880a6cc65e3c5dc0e8e4e8"
    end
  end

  def install
    bin.install "skilldoc"
  end

  test do
    assert_match "skilldoc", shell_output("#{bin}/skilldoc --help")
  end
end
