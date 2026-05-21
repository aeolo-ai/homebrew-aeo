class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.4.0/aeo_darwin_arm64.tar.gz"
      sha256 "254df8be645c4a13c3d93649e5088265d6a9d54b370669c944e246cecbf7df70"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.4.0/aeo_darwin_amd64.tar.gz"
      sha256 "079b8eca4dd1388097a2747ea6daa459fb258e498495b91fd7602978fa35ab38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.4.0/aeo_linux_arm64.tar.gz"
      sha256 "338c0fe6e51463771050620ef48a86c11de120501ed5b6f23a38a717f43a8b29"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.4.0/aeo_linux_amd64.tar.gz"
      sha256 "660af8c171a3000d03bd3b7c2fb3b8683b01846dc1ee3152dc5ca8811b564a14"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
