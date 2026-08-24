class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.24"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.24/aeo_darwin_arm64.tar.gz"
      sha256 "c0e4621138b6b377ef69b3c214a6e5fe5fd07b4a22ce08d6dd1246a70cc8b130"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.24/aeo_darwin_amd64.tar.gz"
      sha256 "b98e69f6d6c86310302de8d3cdf825a345e0bc0e481308072c75e77b37ea004b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.24/aeo_linux_arm64.tar.gz"
      sha256 "4e802ccd262531b832dbd07eaa5dcda51c177c82a913f8eefa3adf165e8a3fb7"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.24/aeo_linux_amd64.tar.gz"
      sha256 "a1d29d6bb84fc966d2164d0e56eeddeea2ebf93a647b23922d0cd38dc6f7b95f"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
