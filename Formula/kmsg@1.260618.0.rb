class KmsgAT12606180 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260618.0/kmsg-macos-universal"
  sha256 "92016f0786671b195662a5e98f481091beaf0c63ad27f87dabd107ffc0de1422"
  version "1.260618.0"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260618.0", output
  end
end
