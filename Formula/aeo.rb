class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.5/aeo_darwin_arm64.tar.gz"
      sha256 "fab81d45561c8db91128a2a2ab02934a6e0184b1482812b1132dc59e48b9cfc0"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.5/aeo_darwin_amd64.tar.gz"
      sha256 "4a1a9551ea742654b5eec4305be90c61b7fe8f64ebaa2db9bb6031548fbcd5d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.5/aeo_linux_arm64.tar.gz"
      sha256 "f07db0681d09455436fec144cf5034d251397aff7834932ca1148127fd70a704"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.5/aeo_linux_amd64.tar.gz"
      sha256 "b9e69df9fda53dde358e1632ded6913412e28ad731da0ccab12557e96d3913b0"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
