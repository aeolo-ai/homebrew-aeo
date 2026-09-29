class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.36"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.36/aeo_darwin_arm64.tar.gz"
      sha256 "2f573baa4142e9e9300c65ad98580bedfad5802a6ab17211dc50cd76d601d82c"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.36/aeo_darwin_amd64.tar.gz"
      sha256 "00ddf3be6e0866ddf76b77ed26426e8ce626d9ff829dc11662290b438d74179b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.36/aeo_linux_arm64.tar.gz"
      sha256 "6b09f5abc0ead1b3ecefa6a06d28a0928dd92dd038a79e8ad3bfef2b537fac52"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.36/aeo_linux_amd64.tar.gz"
      sha256 "06f377fe516ebc5230a1a01e33bbecb9eff714c50f789f5dd0d69657ff0299ad"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
