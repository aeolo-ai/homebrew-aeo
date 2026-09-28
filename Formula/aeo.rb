class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.35"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.35/aeo_darwin_arm64.tar.gz"
      sha256 "a5012e1a4e6baed4ce15ea19deeced2d99deb1521dd5e809026ec8913e9ad1b5"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.35/aeo_darwin_amd64.tar.gz"
      sha256 "15dc449a3746aa087ba2f5ad8e72f6d90035b62e23580639a9213d913a29ed03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.35/aeo_linux_arm64.tar.gz"
      sha256 "895afc4b59f725845717dbc5b1e4d005c1d2676ec259331fd166fad379497883"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.35/aeo_linux_amd64.tar.gz"
      sha256 "5236a200504ab4f618f9007e708690456d387fd9e4b7aff32b79f4ddb5524c13"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
