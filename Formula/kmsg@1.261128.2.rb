class KmsgAT12611282 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.261128.2/kmsg-macos-universal"
  sha256 "d15ec09b2675b6d07de781b735a35c2b43a2862d31909c2b7a1a0c3a171da25e"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.261128.2", output
  end
end
