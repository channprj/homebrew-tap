class KmsgAT040 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.4.0/kmsg-macos-universal"
  sha256 "25ae5250cf24cdda4bbc9dfb6eaf81a3bbfce1fc64e4789e401ab6413933afe6"
  version "0.4.0"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.4.0", output
  end
end
