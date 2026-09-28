class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/aeolo-ai/aeo"
  version "2.3.34"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.34/aeo_darwin_arm64.tar.gz"
      sha256 "dcfc64f34077a51d58f3bf89372de9bde9a73d6a0607096b1958a7f5e3ba8661"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.34/aeo_darwin_amd64.tar.gz"
      sha256 "6c9388b959906da56575a53ad9c2da897f4c10aba2ac91bb677955f602433485"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.34/aeo_linux_arm64.tar.gz"
      sha256 "3da0cb75d1ab198887475c008be68a8d9f929fef4f2d2af1d9324b517fd899ad"
    else
      url "https://github.com/aeolo-ai/aeo/releases/download/v2.3.34/aeo_linux_amd64.tar.gz"
      sha256 "4c5386874a06b3cba2784d43641d115481edc0f6c2987c77434eeebf46f1dbd2"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
