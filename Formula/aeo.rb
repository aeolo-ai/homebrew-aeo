class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.21"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.21/aeo_darwin_arm64.tar.gz"
      sha256 "cc7c01a8c7873b461d2025441ec40a5c9fce5d4c66d356beb817e9971ea030e3"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.21/aeo_darwin_amd64.tar.gz"
      sha256 "67d0f47568a3fb5ea2ccdbbf69e9058338f9614a3b830687cf052fc656f1cbf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.21/aeo_linux_arm64.tar.gz"
      sha256 "bf6c73213a7f8bdfad1b18cc0111f7ad7ecc50ae6eb83edee2bc8d2e14cdfe52"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.21/aeo_linux_amd64.tar.gz"
      sha256 "10ddfbdb151d8babc6037c64d22713809d90f9bf90c9dd18a0f78f7fe0233014"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
