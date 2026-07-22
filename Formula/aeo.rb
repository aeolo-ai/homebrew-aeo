class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.4/aeo_darwin_arm64.tar.gz"
      sha256 "ef72e3266de0efdc0fa9cde85ba562885c3843a4cbe7785496be22eb953fddda"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.4/aeo_darwin_amd64.tar.gz"
      sha256 "d597efa381cc7a25d67403dc7da094cd08fae8ef7928073cbb380c978d00ab36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.4/aeo_linux_arm64.tar.gz"
      sha256 "ac3b0cbaa1f7bdf45a14c9204ada0f6b3d44241e5057a42df2dc89cabfa34fba"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.4/aeo_linux_amd64.tar.gz"
      sha256 "1cbb14afd994507be0af7000faf79425f6a5530627d38b1006ce23e62f90e6cd"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
