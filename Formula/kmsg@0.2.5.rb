class KmsgAT025 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.5/kmsg-macos-universal"
  sha256 "6bec345b1281ea6f4bc1e4f191cc4bc31d45b35c03e0809c82823feb3dfd887e"
  version "0.2.5"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.5", output
  end
end
