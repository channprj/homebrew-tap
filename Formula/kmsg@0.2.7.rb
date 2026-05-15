class KmsgAT027 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.7/kmsg-macos-universal"
  sha256 "681e804a6657d5f990dc92876b37658e408772df8c0f4e44fa20ce453576c19d"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.7", output
  end
end
