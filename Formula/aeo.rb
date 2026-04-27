class Aeo < Formula
  desc "GEO CLI for AI search engine visibility"
  homepage "https://github.com/kithlabs/aeo"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.0.0/aeo_darwin_arm64.tar.gz"
      sha256 "b4b352aceaaeeb6aa60c541155a24f2dc2f6863703200fd90058bcf25aeab79a"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.0.0/aeo_darwin_amd64.tar.gz"
      sha256 "566f0f344fc4ecdbfb552c4002dc662cc79589225837ea12eca4f6677f236ff5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kithlabs/aeo/releases/download/v1.0.0/aeo_linux_arm64.tar.gz"
      sha256 "2e70bd9cc544f1d5d7639ceee05ba2601755bb7065426ea151dff7aef91d42d5"
    else
      url "https://github.com/kithlabs/aeo/releases/download/v1.0.0/aeo_linux_amd64.tar.gz"
      sha256 "927550b37ce49d2590d8a15f3b11aab3bc1a18b7878b976264791b90922e47ba"
    end
  end

  def install
    bin.install "aeo"
  end

  test do
    assert_match "aeo", shell_output("#{bin}/aeo --version")
  end
end
