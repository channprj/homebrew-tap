class KmsgAT021 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.1/kmsg-macos-universal"
  sha256 "42c3db908a26ae8f4e9d147bb629edd59abf67d628bd95ce82f276bd0a0b9d01"
  version "0.2.1"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.1", output
  end
end
