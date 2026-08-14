class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.19"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.19/aeo_darwin_arm64.tar.gz"
      sha256 "be20eaad43bdba01c45879a43bf2a5433f1731516e6592d123d4c7da423f4f06"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.19/aeo_darwin_amd64.tar.gz"
      sha256 "bb516853309daa9dbe8797942f03b14e039e5966cdf08e90df33995e73c1cb77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.19/aeo_linux_arm64.tar.gz"
      sha256 "af18b73761dcbae5167fce70fc5c803caa3ed85220a220c345934a5f8630b947"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.19/aeo_linux_amd64.tar.gz"
      sha256 "b100902fa4d1d1ea48e4f179b7f229906882b02b43bbf9229bf7121a5078269c"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
