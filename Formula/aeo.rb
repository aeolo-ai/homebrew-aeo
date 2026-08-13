class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.17"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.17/aeo_darwin_arm64.tar.gz"
      sha256 "2508c71a05861a1662d92a027e25ac18f943da02d9c43a1967fb31cf93cd2652"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.17/aeo_darwin_amd64.tar.gz"
      sha256 "e5adc1b48baa5347253a0b0046a3785e7665b2ef4f15e7c6cb9947b4cd394cc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.17/aeo_linux_arm64.tar.gz"
      sha256 "f7f860ce54d7a0f49571dbe41faf58f2e62728e56018e81e5517e52b3ba460db"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.17/aeo_linux_amd64.tar.gz"
      sha256 "b014a74287fb2691a12f7a1cea8a993025c9feebefd0e18cd672f2c3de62606d"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
