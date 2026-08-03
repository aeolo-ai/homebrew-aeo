class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.12/aeo_darwin_arm64.tar.gz"
      sha256 "e45d7cc7308d2c2aadb9627bc7fde37b7642bb3347d3410cbb6b2b464502667d"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.12/aeo_darwin_amd64.tar.gz"
      sha256 "0df2e5ccf051f93fed7bf3994d2e57f72a015c0390b8301a7313a973ff37b243"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.12/aeo_linux_arm64.tar.gz"
      sha256 "cd82fe9e6e37830d3cd057a29e3d940c23163ada75faf4f59831405d462897b4"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.12/aeo_linux_amd64.tar.gz"
      sha256 "81d52b801c77b5603496b96055514b529d043139f7f657bb5f59d4208b782abc"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
