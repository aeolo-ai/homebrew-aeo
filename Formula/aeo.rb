class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.18"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.18/aeo_darwin_arm64.tar.gz"
      sha256 "7d8f600bbe3a2247198fb5b68fd14411fe5d20e9bc5a98359c0217f6febf92a8"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.18/aeo_darwin_amd64.tar.gz"
      sha256 "d32f084a6530de24678f5943b47e34e2a45555205e8c8cfcbe294aa3802ff275"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.18/aeo_linux_arm64.tar.gz"
      sha256 "b2e741589d7cdd523741fc430adc02cd1846564bff7cdeb8e1a637473e85fc57"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.18/aeo_linux_amd64.tar.gz"
      sha256 "85d85d2388c88a1c5704fe01b68c6338f14e5116c28ad4e7ed25075fdfb807e5"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
