class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.39"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.39/aeo_darwin_arm64.tar.gz"
      sha256 "7a63743ab0a2439e0594b5a4e32b3a300c16ef85d59ea4670f7525d3bf5662cb"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.39/aeo_darwin_amd64.tar.gz"
      sha256 "7925b01bfbb7d11098d1ce57cfdda8900e4ab76b21abda41edf6e739685c581e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.39/aeo_linux_arm64.tar.gz"
      sha256 "deea5989f4da5de7d2cf46f8bb5e88933bf15a4ec69e16348094db9ca8c1e2c9"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.39/aeo_linux_amd64.tar.gz"
      sha256 "827bde26d2dc44b986fb508e65cf8c4d1c3380db33c0bf4d9aa39f5e546dc0fb"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
