class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.29"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.29/aeo_darwin_arm64.tar.gz"
      sha256 "dbb2ff85717bf593759163ed4ec6844602163f247369b176f4a119e37656492f"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.29/aeo_darwin_amd64.tar.gz"
      sha256 "ca32ce887eeaa8d9bd1820a119518c87b80e7e53c1b7d5f38bbdeffb11d97d0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.29/aeo_linux_arm64.tar.gz"
      sha256 "50addf44448478696ec97758b94dbaed8749b38662c4414c59fdbf0dcec313c5"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.29/aeo_linux_amd64.tar.gz"
      sha256 "b62c1dd2d5a1116e04be67b7c78eea39676ff85ac26f4ab6733086a3f5ef4b73"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
