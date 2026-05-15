class KmsgAT029 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.9/kmsg-macos-universal"
  sha256 "b8473ac267650f12b9a667624b7a9654ef9e4b8b360ecef08e0fccab432fa06a"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.9", output
  end
end
