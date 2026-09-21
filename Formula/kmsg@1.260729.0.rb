class KmsgAT12607290 < Formula
  desc "CLI tool for KakaoTalk on macOS"
  homepage "https://github.com/channprj/kmsg"
  url "https://github.com/channprj/kmsg/releases/download/v1.260729.0/kmsg-macos-universal"
  sha256 "c9c01970d712216f99f916dd44af9ce56ad8208695b664181d7d0593e81aef26"
  license "MIT"

  def install
    bin.install "kmsg-macos-universal" => "kmsg"
  end

  test do
    output = shell_output("#{bin}/kmsg --version")
    assert_match "1.260729.0", output
  end
end
