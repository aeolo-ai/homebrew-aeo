class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.41"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.41/aeo_darwin_arm64.tar.gz"
      sha256 "524b448456c87b7613de419d04f873f428493868770d44a7f713dc6c1f011965"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.41/aeo_darwin_amd64.tar.gz"
      sha256 "0a0e42f1c32533f73e4ed8bea237ec2c284ee7dabc58acf30b87938e38d3cd63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.41/aeo_linux_arm64.tar.gz"
      sha256 "3ced8c955e2eda509d52687357ed25ca5ec7d1a639ff16fd80de6b57654187bd"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.41/aeo_linux_amd64.tar.gz"
      sha256 "9e8ae61e842670c1ebfc4c7c7dd47d0653805a9fca98997be679e65d14efabf2"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
