class SttCli < Formula
  desc "Transcribe audio and stamp each line with the time it was spoken"
  homepage "https://github.com/channprj/stt-cli"
  url "https://github.com/channprj/stt-cli/releases/download/v1.260818.0/stt-cli-macos-universal"
  sha256 "TO_BE_REPLACED_BY_CI"
  version "1.260818.0"
  license "MIT"

  head "https://github.com/channprj/stt-cli.git", branch: "main" do
    depends_on "rust" => :build
  end

  # channprj/stt-cli is private, so binary downloads require an authenticated
  # GitHub session.  When the URL fetch fails, fall back to the HEAD build:
  #   brew install --HEAD channprj/tap/stt-cli
  #
  # The SHA256 is updated automatically by the release CI.

  depends_on "rust" => :build if build.head?

  def install
    if build.head?
      system "cargo", "install", *std_cargo_args
    else
      bin.install "stt-cli-macos-universal" => "stt-cli"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stt-cli --version")
    assert_match "stt-cli/api.json", shell_output("#{bin}/stt-cli config path")
  end
end