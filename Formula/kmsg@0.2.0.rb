class KmsgAT020 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v0.2.0/kmsg-macos-universal"
  sha256 "6ca9f39cd9e28b22679c6840e55b93ac02e7941c945d9bca89805a3fce073bf5"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "0.2.0", output
  end
end
