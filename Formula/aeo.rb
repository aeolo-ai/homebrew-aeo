class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.38"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.38/aeo_darwin_arm64.tar.gz"
      sha256 "58402d30cfe7f5a345ad5b7a1e1cd9e6cb2932a47bde03e4bf9afe0e7ced45ac"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.38/aeo_darwin_amd64.tar.gz"
      sha256 "8320a42bed290a1584487189ee3b85a7eea033ba628fbee9d4fabd38fbbfb185"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.38/aeo_linux_arm64.tar.gz"
      sha256 "86846c9e5e23b78351a91da07148fe80ff842ad9fed94a08969262344bbc2b78"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.38/aeo_linux_amd64.tar.gz"
      sha256 "0c60de55b48ec48234414e0975f11f092eb0dfd74ed04907c3ce2a2b77875541"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
