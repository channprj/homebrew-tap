class Kmsg < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260424.0/kmsg-macos-universal"
  sha256 "b900c4bcfffe3a5b1afcbc4ae6badc47aaba586e229874fc08bd9957f99a1983"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260424.0", output
  end
end
