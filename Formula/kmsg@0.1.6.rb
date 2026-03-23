class KmsgAT016 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.1.6/kmsg-macos-universal"
  sha256 "4a9c204f1d924be14c7fc66ee787c6d328235e40a3e692b3904527058f65f6de"
  version "0.1.6"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.1.6", output
  end
end
