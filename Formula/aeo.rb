class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.9/aeo_darwin_arm64.tar.gz"
      sha256 "8a0175fec8fd3f51eeadbc0bb18c718c62beab1beaae1fbd8c69e2def9b03ed1"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.9/aeo_darwin_amd64.tar.gz"
      sha256 "5af424e484edfdf17fff675e46c10d6f2e8a5f81de520ff6d33683ff3df124b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.9/aeo_linux_arm64.tar.gz"
      sha256 "0d9000428faaa023d498c15cea6656c3a3ae12edaf6af3f4d1af6696e37c4915"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.9/aeo_linux_amd64.tar.gz"
      sha256 "670f75c1eee1928ffbfd1c864cf4f2a0a8c76fc9364e4428731d2011ed5c0f8e"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
