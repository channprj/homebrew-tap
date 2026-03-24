class Kmsg < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.12/kmsg-macos-universal"
  sha256 "d274f82f084f09dece70e8672093af55d77240d1a5bbbb2d484d6382943a7bed"
  version "0.2.12"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.12", output
  end
end
