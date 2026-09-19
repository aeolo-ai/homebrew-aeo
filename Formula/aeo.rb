class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.33"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.33/aeo_darwin_arm64.tar.gz"
      sha256 "576b886786a77e5043cc7614d389710396a3fdd57468e0b5177a5e6dbe7a7b98"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.33/aeo_darwin_amd64.tar.gz"
      sha256 "2f9e30fb51b655f0f3730d5f776e99e85d38879886daba8197d0b6a785e82e71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.33/aeo_linux_arm64.tar.gz"
      sha256 "18d006124f69cbd6969bb9e0b65b23c4a66f35a7fb5fe25e2a1d924923b60df1"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.33/aeo_linux_amd64.tar.gz"
      sha256 "ee010d7b3b862008d45b9cefe3bddc00d2cce304fed35eaabb82590fda0547e6"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
