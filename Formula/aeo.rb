class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.1.0/aeo_darwin_arm64.tar.gz"
      sha256 "fc19915564d58a6e3127ebe3b4e37d5edb5c536cc6d7a12184ba3579973caa37"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.1.0/aeo_darwin_amd64.tar.gz"
      sha256 "8893bb5cb603220d69b6bd99aeb4b8b40c1cb0f5e1627540865ced35b47b13f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.1.0/aeo_linux_arm64.tar.gz"
      sha256 "9f09efad63d24a47e85ef4c875f7e53315ef9658d0bcae11fc756cd6b33837f5"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.1.0/aeo_linux_amd64.tar.gz"
      sha256 "63d25608111fbe94b3111bba8e0c180436a8fb6e1ce6658ba65dfb2f39d49747"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
