class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.28"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.28/aeo_darwin_arm64.tar.gz"
      sha256 "6c837738c05412b172e138a03738087a9503a097f3b5f787632c11925f532655"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.28/aeo_darwin_amd64.tar.gz"
      sha256 "55eafbb44e9c4fbe9200226ab721fc7efdaba6e81d7c59f10d40bbc32af3388d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.28/aeo_linux_arm64.tar.gz"
      sha256 "54f9dab2c6b246e72a8c319af5bbdddafcd573e1707f478ae0f56c29b703be80"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.28/aeo_linux_amd64.tar.gz"
      sha256 "916c6db4094417fecbf1f5bb71807a4da90f426cb7e6796cb847d72f9f736436"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
