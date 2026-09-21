class KmsgAT12609210 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260921.0/kmsg-macos-universal"
  sha256 "f6aca8d912207f381ea5c92f4589da3b6f33f1fa214d53a4af521181b46b943d"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260921.0", output
  end
end
