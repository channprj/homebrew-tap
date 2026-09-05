class SttCli < Formula
  desc "Transcribe audio and stamp each line with the time it was spoken"
  homepage "https://github.com/channprj/stt-cli"
  url "https://github.com/channprj/stt-cli.git",
      tag:      "v1.260906.0",
      revision: "19ea1f14006a6b499e1ff97ef2e15e60ba1453f5"
  license :cannot_represent
  head "https://github.com/channprj/stt-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Source access to channprj/stt-cli is required for installs and upgrades.
      Authenticate Git with gh auth login followed by gh auth setup-git.
      VAD is optional; install ffmpeg separately to use --vad.
    EOS
  end

  test do
    ENV["XDG_CONFIG_HOME"] = testpath
    output = shell_output("#{bin}/stt-cli --version")
    assert_match(/^stt-cli \d+\.\d{6}\.\d+\n$/, output)
    assert_equal "stt-cli #{version}\n", output unless build.head?
    assert_match "stt-cli/api.json", shell_output("#{bin}/stt-cli config path")
    audio = testpath/"20260101_090000.m4a"
    audio.write ""
    preview = shell_output("#{bin}/stt-cli transcribe #{audio} -p openai -f txt --dry-run 2>&1")
    assert_match "format:    Txt", preview
    assert_match "2026-01-01 09:00:00", preview
  end
end
