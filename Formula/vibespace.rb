class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.3.0/vibespace-v0.3.0-darwin-arm64.tar.gz"
      sha256 "53366253cefcff85240a5f27cc42618ea8357ee7a558cb27b395ccc3df1ec66f"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.3.0/vibespace-v0.3.0-darwin-amd64.tar.gz"
      sha256 "53851c40715c7a186ba2e7ff55ae39750a1438293b957812f207be75369fc7d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.3.0/vibespace-v0.3.0-linux-arm64.tar.gz"
      sha256 "6918bc707ae2628dce258601bca97460ccd0f2571ffe3fa879f0875b9b10dcfb"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.3.0/vibespace-v0.3.0-linux-amd64.tar.gz"
      sha256 "b5bae124ea83c6209c3ddb9406c7803432a01a4ed5918a7a34ff7ede72c0052b"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
