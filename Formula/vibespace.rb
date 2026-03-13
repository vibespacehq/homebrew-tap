class Vibespace < Formula
  desc "Multi-agent AI stateful runtime environments"
  homepage "https://github.com/vibespacehq/vibespace"
  version "0.5.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.5/vibespace-v0.5.5-darwin-arm64.tar.gz"
      sha256 "b2916633f4e35f9ce2ffefa53861c886cf705b67157adc16af906d7b71d9c809"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.5/vibespace-v0.5.5-darwin-amd64.tar.gz"
      sha256 "9d43564166a0295c995ef221a1649e9d39b735e15fc0de708c746960c68a717f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.5/vibespace-v0.5.5-linux-arm64.tar.gz"
      sha256 "180b517f3a08a9001027aa1bc6ed25c8c4663fde5043cda8ef76ae0f1c5bec7c"
    else
      url "https://github.com/vibespacehq/vibespace/releases/download/v0.5.5/vibespace-v0.5.5-linux-amd64.tar.gz"
      sha256 "a601335d1dd4b7c45ad3c9c25ad90b7a4c3bad80ccba43cd1325e747c21da528"
    end
  end

  def install
    bin.install "vibespace"
  end

  test do
    system "#{bin}/vibespace", "version"
  end
end
