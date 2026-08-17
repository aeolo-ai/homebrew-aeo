class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.23"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.23/aeo_darwin_arm64.tar.gz"
      sha256 "95456c306ef7e1c46793bc14e2358f277d352c11169c8bbb2185ca986e780b2e"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.23/aeo_darwin_amd64.tar.gz"
      sha256 "df9da2e844476cbddcc679dd81a032ab361eeda8d679f12e1b75ef42216daaf9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.23/aeo_linux_arm64.tar.gz"
      sha256 "eed9d6b4d2bf5b20f47d90f3b8a9aa5d2514ab50d7fa7879edcf69890cf4b111"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.23/aeo_linux_amd64.tar.gz"
      sha256 "8edacbe78aedeb53809241c1888fc09f7f999e7c8d90f2c32f0bfe1d2db208ff"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
