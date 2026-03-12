class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.4/vibespace-v0.5.4-darwin-arm64.tar.gz"
      sha256 "d1a095992466fafa79e0caa83074f43015badd7249331c40da3875ed268924fe"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.4/vibespace-v0.5.4-darwin-amd64.tar.gz"
      sha256 "7b48e008bbb47f91c75406a7b1a6b72aedcab616bef545175b5098cb326ce7b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.4/vibespace-v0.5.4-linux-arm64.tar.gz"
      sha256 "4792410ea1613126d30e6bd5c25d8ee12e30a2f9157fb3c8d671fecd0c8042ef"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.4/vibespace-v0.5.4-linux-amd64.tar.gz"
      sha256 "0a13faadee1a6c6d282db23cafb479320bd2fcd13b092caa8d1abac5d3d8f0d8"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
