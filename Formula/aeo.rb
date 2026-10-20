class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.47"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.47/aeo_darwin_arm64.tar.gz"
      sha256 "d034d52cb2dd89f32ccfd2915ff05e1b91f9768dbb6ae3bee5f1188783039ac8"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.47/aeo_darwin_amd64.tar.gz"
      sha256 "fe2af83ae56f5f8eeb2bb9ec2c67494e58b3787662ce5161e435ce409a990b2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.47/aeo_linux_arm64.tar.gz"
      sha256 "f86deae22165234847d1acde9e0de975016c5df606de66ff4a446df93a367e3f"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.47/aeo_linux_amd64.tar.gz"
      sha256 "9623e95e5e35fa351f3ff162dfac71fe9d0cdb715e1408e7620db1f062c83a66"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
