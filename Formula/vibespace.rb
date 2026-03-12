class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.3/vibespace-v0.5.3-darwin-arm64.tar.gz"
      sha256 "7a830b0e48db8d55d412b23edfb3c845641b179ce40fd68ab3bff65c34b6cb83"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.3/vibespace-v0.5.3-darwin-amd64.tar.gz"
      sha256 "6aa7931ee4819cce8de841b2f53622c5cc6a969dfe8b016db3567b523bb08823"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.3/vibespace-v0.5.3-linux-arm64.tar.gz"
      sha256 "5cd83453bb4337c9d4fd07cd121f59f834a5cc481b9412220d06e6c85fdaef19"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.3/vibespace-v0.5.3-linux-amd64.tar.gz"
      sha256 "cc56404812c23ff5c31288dc307e5841279b0646127b73334482347986edc4ac"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
