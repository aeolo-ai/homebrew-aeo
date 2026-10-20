class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.46"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.46/aeo_darwin_arm64.tar.gz"
      sha256 "1aeb612d4cfc9c08f5362ad1c2b0b8769c621a4b43d9dec3dd3227187a78e8cb"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.46/aeo_darwin_amd64.tar.gz"
      sha256 "c1f2e5d8e8dd5827c4ceb125cf3208e563e9dc62e9f46911490a651f6d55d474"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.46/aeo_linux_arm64.tar.gz"
      sha256 "bb14c8252088a5f198591333d9f4d1ecbc846f65722e10077317ddc8e52b5737"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.46/aeo_linux_amd64.tar.gz"
      sha256 "0071065c497246157d80cf389fa1562f4b70dfa467e90f81c5883bbe266094e9"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
