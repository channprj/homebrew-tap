class KmsgAT12608191 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260819.1/kmsg-macos-universal"
  sha256 "0475b3ee642e7672c9c425227784b57e9e99a5f9cb10532ae4a04e4c35e24c29"
  version "1.260819.1"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260819.1", output
  end
end
