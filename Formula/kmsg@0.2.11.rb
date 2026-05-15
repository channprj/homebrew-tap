class KmsgAT0211 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.11/kmsg-macos-universal"
  sha256 "d51cc95da8f37c5561e741951833ff126673614567d103bdb6f04d40d9272937"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.11", output
  end
end
