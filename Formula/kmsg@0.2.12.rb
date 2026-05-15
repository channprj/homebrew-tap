class KmsgAT0212 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.12/kmsg-macos-universal"
  sha256 "2846eeaf84271b7f8c45a7812b801eb01f78b57afdf969835d016ed61a7bf3d2"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.12", output
  end
end
