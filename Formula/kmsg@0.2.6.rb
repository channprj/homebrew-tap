class KmsgAT026 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.6/kmsg-macos-universal"
  sha256 "9a56772d47d7aa6c5e45703642afc2e7753efc75aa51cb96c9e6e8ebf5fd3b09"
  version "0.2.6"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.6", output
  end
end
