class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.1/aeo_darwin_arm64.tar.gz"
      sha256 "1fd1667987c78d41e3d26933f0d56b3f9cb0124e937ebbc3aeb0512d8159a18d"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.1/aeo_darwin_amd64.tar.gz"
      sha256 "b876f25f90d92e9d8f7b17c5e3f07a1a7dc265d86b81d1c34cab1e4263f1f936"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.1/aeo_linux_arm64.tar.gz"
      sha256 "32a454d249067c539f59907093016742fb6a8a0fbdb2a9daea286cc193edcd32"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.1/aeo_linux_amd64.tar.gz"
      sha256 "0e3cdadd3d4a6dac31a15d72fceb55df38ffa00b1df013dfc697d4943dee2f29"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
