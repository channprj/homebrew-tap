class PdfToTypstAT02603233 < Formula
  desc "Convert PDF documents into editable Typst projects"
  homepage "https://github.com/channprj/pdf-to-typst"
  url "https://github.com/channprj/pdf-to-typst/archive/refs/tags/v0.260323.3.tar.gz"
  version "0.260323.3"
  sha256 "77b16e057960e4e725507abd14b8a58de2e0ae32f4201d7db2a65d67c58d0e46"
  license "MIT"

  depends_on "rust" => :build
  depends_on "ghostscript"

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
    (lib/"pdf-to-typst").install "tools"
  end

  test do
    assert_match "v0.260323.3", shell_output("#{bin}/pdf-to-typst --version")
    assert_path_exists lib/"pdf-to-typst/tools/extract_non_text_regions.py"
  end
end
