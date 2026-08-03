class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.13/aeo_darwin_arm64.tar.gz"
      sha256 "e35d6882ef058087b4ae83603e4c5c82760a012aa7c615788965499e47825726"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.13/aeo_darwin_amd64.tar.gz"
      sha256 "9a14b92c0104cc170bc56ba8841da20de4d2f00101d9cf8d512c4ec3a16094ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.13/aeo_linux_arm64.tar.gz"
      sha256 "b34317c5535d3c28544d3b4a0f85dc6ffcd4e2e3923eb922daf3b5bc91454904"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.13/aeo_linux_amd64.tar.gz"
      sha256 "903332e13fe25205dc25150b7c4cffff2c53f146571572929c547daaa8f45886"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
