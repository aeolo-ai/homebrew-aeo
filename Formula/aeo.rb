class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.10/aeo_darwin_arm64.tar.gz"
      sha256 "0e2c14cc0ffae91e8abcd791fdde96474d04ff1a1f637da2da1162e3357a1769"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.10/aeo_darwin_amd64.tar.gz"
      sha256 "535073b1fdee52141f3821f6d3d95f28eede28bc590b40433de7221b9da92b15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.10/aeo_linux_arm64.tar.gz"
      sha256 "cb0e3f69c072bff0146a3f577ec2966a216b8bc7eb0cd1910aca8795cf59e63a"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.10/aeo_linux_amd64.tar.gz"
      sha256 "5e534d6f7b8e0221a127074eb1f48ce5eb3da2025aecca4139f16cf77ff3af1f"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
