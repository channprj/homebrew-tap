class KmsgAT12607050 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260705.0/kmsg-macos-universal"
  sha256 "609fb64953e8276da8171764347caa044933be0b6887c74eac94e11bd5447a3a"
  version "1.260705.0"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260705.0", output
  end
end
