class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.0/aeo_darwin_arm64.tar.gz"
      sha256 "9ebcb8946cb878a87e09e31beba31ea832c8cc75aae30e746603fbeeb3be5ba5"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.0/aeo_darwin_amd64.tar.gz"
      sha256 "0724c28b1874f14cab409eac8d3f509cae65eef84b5566c73499a04a90a0c6b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.0/aeo_linux_arm64.tar.gz"
      sha256 "3355176fa31e56ac4918b4be8fecfec5a176f985600044cecf5305f254720467"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.0/aeo_linux_amd64.tar.gz"
      sha256 "59032aac319e38c391586b2424428b552135e1e9efc63d80ad4091d43da27f32"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
