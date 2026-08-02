class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.11/aeo_darwin_arm64.tar.gz"
      sha256 "d27a27279af00c4472fe094cff203c24862ab5e6ff61dcf26b86f21f5302505b"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.11/aeo_darwin_amd64.tar.gz"
      sha256 "7e3ebdc1981f3c1a1623702309147d79fa624bebab06c32a87f605703cd04bd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.11/aeo_linux_arm64.tar.gz"
      sha256 "9ad9c772e2e07c3a079fb1944b91e21943b619ba72c922efab3f41ce8c09a277"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.11/aeo_linux_amd64.tar.gz"
      sha256 "92bf45709e8c9741c8511c0d6c0bb9632be16fc2e600cf861fcf631f4c856201"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
