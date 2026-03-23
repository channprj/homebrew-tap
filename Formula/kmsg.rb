class Kmsg < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.10/kmsg-macos-universal"
  sha256 "ede51102700aea9392ac88cbc91bf42385783baaa76e7e007970ef727ef1cf68"
  version "0.2.10"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.10", output
  end
end
