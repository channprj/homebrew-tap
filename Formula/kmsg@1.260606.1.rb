class KmsgAT12606061 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260606.1/kmsg-macos-universal"
  sha256 "4275765872fb904eff2de75776eac6b0d77659b929625332b0a7eb856226da6c"
  version "1.260606.1"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260606.1", output
  end
end
