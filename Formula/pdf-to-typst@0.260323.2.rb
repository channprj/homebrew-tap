class PdfToTypstAT02603232 < Formula
  desc "Convert PDF documents into editable Typst projects"
  homepage "https://github.com/channprj/pdf-to-typst"
  url "https://github.com/channprj/pdf-to-typst/archive/refs/tags/v0.260323.2.tar.gz"
  version "0.260323.2"
  sha256 "994b05f352bf5b72b7d52789d5f1f03363c33dac71492d310d6eda260b758e93"
  license "MIT"

  depends_on "rust" => :build
  depends_on "ghostscript"

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
    (lib/"pdf-to-typst").install "tools"
  end

  test do
    assert_match "v0.260323.2", shell_output("#{bin}/pdf-to-typst --version")
    assert_path_exists lib/"pdf-to-typst/tools/extract_non_text_regions.py"
  end
end
