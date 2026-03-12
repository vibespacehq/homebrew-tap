class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.1/vibespace-v0.5.1-darwin-arm64.tar.gz"
      sha256 "51df5a631cc4957e78f783d17d3d05b09d68250ddd92f40d4d9346fe7b493f75"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.1/vibespace-v0.5.1-darwin-amd64.tar.gz"
      sha256 "b2484e2000a070cf8460ce981b6c15ad55d84b85ccb9b322a218555db111e0c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.1/vibespace-v0.5.1-linux-arm64.tar.gz"
      sha256 "8cfb2fbc293eb53c634433320260cb49adbb6d9553c2d6a355839e59bd77ac5c"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.1/vibespace-v0.5.1-linux-amd64.tar.gz"
      sha256 "1e5d8e616e4a958b8bad7cc8d29473db664b954ad0bec48816dc1f3d6d7afe9a"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
