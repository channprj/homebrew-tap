class KmsgAT12606060 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260606.0/kmsg-macos-universal"
  sha256 "302c2c6c56757bc0346a45b1d50ca821edec859641aa5756bea73dc0024a4e75"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260606.0", output
  end
end
