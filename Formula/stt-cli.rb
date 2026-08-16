class SttCli < Formula
  desc "Transcribe audio and stamp each line with the time it was spoken"
  homepage "https://github.com/channprj/stt-cli"
  # channprj/stt-cli is private, so there is no anonymously fetchable tarball.
  # Installing from a git clone lets Homebrew reuse the user's git credentials:
  #   brew install --HEAD channprj/tap/stt-cli
  head "https://github.com/channprj/stt-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "stt-cli", shell_output("#{bin}/stt-cli --version")
    assert_match "stt-cli/api.json", shell_output("#{bin}/stt-cli config path")
  end
end
