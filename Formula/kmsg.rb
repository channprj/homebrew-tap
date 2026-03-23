class Kmsg < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.10/kmsg-macos-universal"
  sha256 "7229239c0625190705a27afd4c21bef5df64cd43230847da985f00a8c8d5b616"
  version "0.2.10"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.10", output
  end
end
