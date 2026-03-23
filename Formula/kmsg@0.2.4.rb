class KmsgAT024 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.4/kmsg-macos-universal"
  sha256 "14df2a4333f6f9499cdb9cd6afd45dbad3082d78b42e08ac920d3500862d59d8"
  version "0.2.4"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.4", output
  end
end
