class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.20"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.20/aeo_darwin_arm64.tar.gz"
      sha256 "2ea453ecc16f6c3509a1450c91fec0e69dd69c379a1569265f2415cd9259d14e"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.20/aeo_darwin_amd64.tar.gz"
      sha256 "92b48d9995e5ead7215c178862e5b7407b97a7220f88abfa713cf9b71c992d42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.20/aeo_linux_arm64.tar.gz"
      sha256 "9593ed8f9b58e10e73781a914cf3220c854838920723fa3babbc9999f25f85ba"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.20/aeo_linux_amd64.tar.gz"
      sha256 "6ee40a13b9210b1b3e18817167a568dd5ce5bfd427d9bb158b70195091d75a5c"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
