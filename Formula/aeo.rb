class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.43"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.43/aeo_darwin_arm64.tar.gz"
      sha256 "48664c2f6c8d97766c94ad7d5d384b581c710f6aeb3e3fb4a3f967f2e3d78e95"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.43/aeo_darwin_amd64.tar.gz"
      sha256 "cebfd1466479eefcd6b0c5cf38b771751e5fadd61aa68bc9af8b4a87d60b7fa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.43/aeo_linux_arm64.tar.gz"
      sha256 "913d99387f1cccd3760f9ff1b3cc2db9eab32be54d56f34e38f05f5fc29c69cf"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.43/aeo_linux_amd64.tar.gz"
      sha256 "c4015948e4e46ff5232265c64aafff3ee43782307d7176489fb2dcb7e06639d8"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
