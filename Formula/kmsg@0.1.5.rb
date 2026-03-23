class KmsgAT015 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.1.5/kmsg-macos-universal"
  sha256 "48d12caf662888db49d558f3c73f66fe53f7522bd8af3d0ec70dda0921d60bae"
  version "0.1.5"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.1.5", output
  end
end
