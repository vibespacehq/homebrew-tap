class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.1.0-alpha.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.1.0-alpha.1/vibespace-v0.1.0-alpha.1-darwin-arm64.tar.gz"
      sha256 "40a15e96a87c381349bfab4c492ea5bbed95ccd9017f69d10310e2815e028e68"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.1.0-alpha.1/vibespace-v0.1.0-alpha.1-darwin-amd64.tar.gz"
      sha256 "4ef9077fd31204bfd516faa4fd42fc9acf51b4f50c0291e496c278ff7593bc4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.1.0-alpha.1/vibespace-v0.1.0-alpha.1-linux-arm64.tar.gz"
      sha256 "1430d7dd741d483c15039b7e202827b8cf5c694da7bd8587423b55401c9a1eef"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.1.0-alpha.1/vibespace-v0.1.0-alpha.1-linux-amd64.tar.gz"
      sha256 "2aaaba95a980e646c35756c77d6248f369de88b824c1ce924a161118b0ebb57e"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
