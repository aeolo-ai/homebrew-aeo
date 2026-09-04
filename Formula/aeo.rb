class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.25"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.25/aeo_darwin_arm64.tar.gz"
      sha256 "faae4889da8493bdb35d7e10558c82082c17537dc6477d5479bd4a0c5b728466"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.25/aeo_darwin_amd64.tar.gz"
      sha256 "31bdec4db12eeab7f10a7684fb31cbb32cf29b7e8644e7beefef740612f1758e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.25/aeo_linux_arm64.tar.gz"
      sha256 "a91c2cf6d3d158190ca5891ae608130d6f9aa5b129ec817e445db8be1da8090d"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.25/aeo_linux_amd64.tar.gz"
      sha256 "857dd91cb538866ceeb01a2f75a851064f54bfa207da94dbae8f8099faae20a0"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
