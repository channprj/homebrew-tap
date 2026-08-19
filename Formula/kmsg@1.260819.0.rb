class KmsgAT12608190 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260819.0/kmsg-macos-universal"
  sha256 "855f823f0639ed915a36fea074d376d36382ffda13ae8fab17c6270a8d288a7a"
  version "1.260819.0"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260819.0", output
  end
end
