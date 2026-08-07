class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.15/aeo_darwin_arm64.tar.gz"
      sha256 "b9e0adc41bf5f87fad4a91cc7a4b535e7a351b6ffb5b8bf1ef5a928afcc784f9"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.15/aeo_darwin_amd64.tar.gz"
      sha256 "a85c501450d67c3c1f6d85208ba93cf7266a90f2097b2a712b50afdc0552d3ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.15/aeo_linux_arm64.tar.gz"
      sha256 "7c570a12462b183b65c68cd91fbc2ed8b944ddbeea21f694b85f6fe55c825b7e"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.15/aeo_linux_amd64.tar.gz"
      sha256 "2caa3a119c0db7c2bd2ccf918545e0ad15ed752fa08757414fb54ae9967a9746"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
