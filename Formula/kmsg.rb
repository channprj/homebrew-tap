class Kmsg < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.9/kmsg-macos-universal"
  sha256 "471c32616b2a6a147818279540f222da76aec5766ae87a3c74cfc26862c014e1"
  version "0.2.9"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.9", output
  end
end
