class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.31"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.31/aeo_darwin_arm64.tar.gz"
      sha256 "37afe1ddf55a797feafc2be1cfd3a48a0dd7632b2e38f790a07758314b787ea4"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.31/aeo_darwin_amd64.tar.gz"
      sha256 "0fa8c9112610a4fcd4ad19e829da4ad3b7f6e4d611d717a2580c8613bd8e6f65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.31/aeo_linux_arm64.tar.gz"
      sha256 "35a4076ff3089a4f83c27dbd9e9c578ac15960d1e703a58292d84492819b827f"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.31/aeo_linux_amd64.tar.gz"
      sha256 "daebf92d0eb9578b50ca1a2f3858b846571ecedf848ac0496fc6059a55ef0432"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
