class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.7/aeo_darwin_arm64.tar.gz"
      sha256 "02b8ad0f647207a042f54d9d8d0f0021a42dde5bce89c73112f8f7b95b01abb7"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.7/aeo_darwin_amd64.tar.gz"
      sha256 "d6a0be20328f718d59fc6c02c6bf93bf18527469a184958e126efaf3b8e6e2a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.7/aeo_linux_arm64.tar.gz"
      sha256 "b0f94392f1436f2d2a39f17d3c4927b345a731f3af506c02d779781c4bcd6d35"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.7/aeo_linux_amd64.tar.gz"
      sha256 "2e9cc280eb09200f8ff18fbf4d70a23735d87bee4615e1095b70b9e6fc49e614"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
