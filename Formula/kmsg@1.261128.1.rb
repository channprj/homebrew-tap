class KmsgAT12611281 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.261128.1/kmsg-macos-universal"
  sha256 "43d6f74f0b7c5d5347b3cf699474d97419bb0300d827c2590f67b33206af601d"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.261128.1", output
  end
end
