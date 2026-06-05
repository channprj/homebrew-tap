class KmsgAT030 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.3.0/kmsg-macos-universal"
  sha256 "2125ddff0c48df6d7580eebb8ca08a145c21a091a26680539a99e487187c344a"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.3.0", output
  end
end
