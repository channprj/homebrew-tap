class KmsgAT12608170 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260817.0/kmsg-macos-universal"
  sha256 "c2fdf6c56e86e209bc4bd2c82811c9dad6bdbbe3311371044ff4db788a5f3f4e"
  version "1.260817.0"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260817.0", output
  end
end
