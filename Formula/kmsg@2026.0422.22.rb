class KmsgAT2026042222 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v2026.0422.22/kmsg-macos-universal"
  sha256 "be843775eea09f431a09a0efa3be1b8e3371549ef363c6e7fd2a67555b9311fc"
  version "2026.0422.22"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "2026.0422.22", output
  end
end
