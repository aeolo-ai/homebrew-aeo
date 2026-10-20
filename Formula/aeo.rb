class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.48"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.48/aeo_darwin_arm64.tar.gz"
      sha256 "43e67ef87c52cd69876d22a4816391875778611c24d0955d061df08cf6bac6fc"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.48/aeo_darwin_amd64.tar.gz"
      sha256 "905c13b4d10eda7d85b8ea60277c2b8cf7041e2a4a6b1eabebf97368ca110f9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.48/aeo_linux_arm64.tar.gz"
      sha256 "7e765eee83653a353e5f4bb5026a4ddea826664030577e3f36222b1570220c8e"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.48/aeo_linux_amd64.tar.gz"
      sha256 "acbafe7e93ad5cb16f14946e139b1de9d68f3c35bea3572d62387d2ca1b9bb78"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
