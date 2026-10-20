class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.45"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.45/aeo_darwin_arm64.tar.gz"
      sha256 "f194f700685c87f8a862f04ef1d3d5a94e5101b7d9cee3ab02d235d81ef9865e"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.45/aeo_darwin_amd64.tar.gz"
      sha256 "8ca4db7433fa18b806a4988ad8c59dd824cce457249ba4cd79d52353f40259f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.45/aeo_linux_arm64.tar.gz"
      sha256 "8ca35181772129493e22b5defd7bfb99db19222dc2c8e3761508a673d578639c"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.45/aeo_linux_amd64.tar.gz"
      sha256 "1c5576f099ea6853d3529d7a31732a576cf772aeef24def6d4da9265a893fce5"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
