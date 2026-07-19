class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.1.0/aeo_darwin_arm64.tar.gz"
      sha256 "41a35aa66f5deaf8f64529c57cd68ab84cb608f88bf6a11c173a72d74a18bcd3"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.1.0/aeo_darwin_amd64.tar.gz"
      sha256 "ec93d3901d52d9eec8f27b21987793431c16507f76c6b80db32d90f3acae225d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.1.0/aeo_linux_arm64.tar.gz"
      sha256 "c8939cd5271522424e055ebed9c12202504ea5390de951fdec31467cb83ecc5a"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.1.0/aeo_linux_amd64.tar.gz"
      sha256 "aee9345d80396d7809dfc30c08b8f62154ea14c8a2ee42e9075e7e605a2e1dab"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
