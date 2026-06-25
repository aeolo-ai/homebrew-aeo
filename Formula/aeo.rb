class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.0.0/aeo_darwin_arm64.tar.gz"
      sha256 "acb0b090996a5dcbcae2ba5675842a666b70ce2c0f442d884428e37c35d25b51"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.0.0/aeo_darwin_amd64.tar.gz"
      sha256 "7e47abb5ec4ae01aa11c9a3a6a59f8fbcf548046c11f6a1810a90b1989a909a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.0.0/aeo_linux_arm64.tar.gz"
      sha256 "284310bf50561b88db99393f044a3d6f8af9be3ba7c3246916f950aaebbd361b"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.0.0/aeo_linux_amd64.tar.gz"
      sha256 "1b1512c7dad4133feb47222cd1a84feac77f975e7f73f859c0f919dc59a43910"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
