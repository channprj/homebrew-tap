class KmsgAT022 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.2/kmsg-macos-universal"
  sha256 "e3b48b8752a7b692ad2b8c9a5818d86222442a99c1d387fc0bf3d91037b09602"
  version "0.2.2"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.2", output
  end
end
