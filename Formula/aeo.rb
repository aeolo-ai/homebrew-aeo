class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.22"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.22/aeo_darwin_arm64.tar.gz"
      sha256 "c3536c261e538a749a829d4c812b09f084cc63c867f937908f1bef45a83ebf57"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.22/aeo_darwin_amd64.tar.gz"
      sha256 "f7d8f096e27a2f02e772ad0ef0c288b071e779a713c4e7ca1c195f283cd6bda3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.22/aeo_linux_arm64.tar.gz"
      sha256 "6b1ad698cea99e70697f3ffaf89b0c96b9024276f7190bbe3a0fbde7399b03bc"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.22/aeo_linux_amd64.tar.gz"
      sha256 "ea48394d08f11612fa32bcb05987eaaa80b35cb6f1e1a1c7e9b9cd260356aa6f"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
