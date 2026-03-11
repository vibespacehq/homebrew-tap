class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.4.0/vibespace-v0.4.0-darwin-arm64.tar.gz"
      sha256 "98549a1411f8f81b8652ca22360b2e056525d59c3c8a08ad153cf4603de04c19"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.4.0/vibespace-v0.4.0-darwin-amd64.tar.gz"
      sha256 "2d979438de129862ec3acafd184ed96a8a12665e91cf33595c7f3cdb5667a100"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.4.0/vibespace-v0.4.0-linux-arm64.tar.gz"
      sha256 "9ea892eccaef9fa4f9d26bbdc3680ec14cdff4dd387a45c2945bb218610c2a36"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.4.0/vibespace-v0.4.0-linux-amd64.tar.gz"
      sha256 "483649666931d63ea31b43eb8f9a996efef08e23860199ece5449ee5f7a0cb67"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
