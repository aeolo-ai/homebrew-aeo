class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.8/aeo_darwin_arm64.tar.gz"
      sha256 "101b2e651c1f904477fe72ea8dd25759cf61c89971d659553d8a1f5dc5a42ded"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.8/aeo_darwin_amd64.tar.gz"
      sha256 "199807391045c244df4f3969f5ede1c8bd289d0a42a84b2e52bb7639e01a4ed8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.8/aeo_linux_arm64.tar.gz"
      sha256 "925543d5915c64a43211cc13649c6337a34e3e2780d17b82c295406f825d6c66"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.8/aeo_linux_amd64.tar.gz"
      sha256 "d8b76ea5f1267c1ac3d9bd8e3cf2665f88246b6552a4fe99101c3de251ce60cf"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
