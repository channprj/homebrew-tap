class Kmsg < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.8/kmsg-macos-universal"
  sha256 "a5e5db844c6b888462780c4ad9a9cad638daf50041eef7effa44d4604b512c6f"
  version "0.2.8"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.8", output
  end
end
