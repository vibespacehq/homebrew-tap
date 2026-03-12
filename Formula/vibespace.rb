class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.2/vibespace-v0.5.2-darwin-arm64.tar.gz"
      sha256 "ea1169e4ddc5dfa73aa491bb49590d2258dd01eab11dda73d1fdabdacb5b902a"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.2/vibespace-v0.5.2-darwin-amd64.tar.gz"
      sha256 "572c48777f3df86cd1f7ce1d1084cf60e1cc21dbbfec81d29cbf1d941558ac24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.2/vibespace-v0.5.2-linux-arm64.tar.gz"
      sha256 "07ebd1a6fb4f6fadc6ab641e4f0e5fac31a52d99c6a3f0c17797374afcc325d1"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.2/vibespace-v0.5.2-linux-amd64.tar.gz"
      sha256 "44d347579635805d2d06b3fd4f7c316a932f25c98eb1b0f1db069253f63c7312"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
