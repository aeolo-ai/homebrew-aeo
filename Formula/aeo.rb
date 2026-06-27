class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.0.1/aeo_darwin_arm64.tar.gz"
      sha256 "fdaf26576e3facbfbacd83b7fce67a5ddfd26ff6ca423a108db3b87538ce89f2"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.0.1/aeo_darwin_amd64.tar.gz"
      sha256 "76bdc62ff82830fa17f1b7e636a9bfffc8145766b696600273c95f1fd60c123b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.0.1/aeo_linux_arm64.tar.gz"
      sha256 "e467596611013f598af4618b085e2e26c4592b9659ac4d7d586e099843b7ca5f"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.0.1/aeo_linux_amd64.tar.gz"
      sha256 "020dc2c0bbd881a99e42c4e322ae912bb82548b041b41cee4803b94ae94dc168"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
