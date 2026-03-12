class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.0/vibespace-v0.5.0-darwin-arm64.tar.gz"
      sha256 "20aaba6193733bc3a9382ba0ec67888d2b7a85543956034b8a997c29fe2e67f3"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.0/vibespace-v0.5.0-darwin-amd64.tar.gz"
      sha256 "d0c0190e3e82e3d49b97bc9a9bf885f3ebc056bce5f0bd47e4df8a4fec220851"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.0/vibespace-v0.5.0-linux-arm64.tar.gz"
      sha256 "a2e52c711c54a2d03cee04f43c103b63d70ee2d0aa8dfdbc05693511e1a64d96"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.0/vibespace-v0.5.0-linux-amd64.tar.gz"
      sha256 "1704023136d4c1c46a85269bc902973b94bad512ae099505c44db3620726b183"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
