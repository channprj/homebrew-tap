class KmsgAT12607260 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260726.0/kmsg-macos-universal"
  sha256 "20cc185f57745b4d73850933bf63666a798d991f43351e7298ed80b3e34ef76a"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260726.0", output
  end
end
