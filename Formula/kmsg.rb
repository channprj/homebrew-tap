class Kmsg < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.3/kmsg-macos-universal"
  sha256 "01f335c5d7db40038e0ffc6051ab7161c8457c6e47f73a112986a71db43b3691"
  version "0.2.3"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.3", output
  end
end
