class PdfToTypst < Formula
  desc "Convert PDF documents into editable Typst projects"
  homepage "https://github.com/channprj/pdf-to-typst"
  url "https://github.com/channprj/pdf-to-typst/archive/c6d206ee9fa0884947b1556128c759192a90648e.tar.gz"
  version "0.1.0"
  sha256 "cd9117d9c79b39a8f7f09e9c375551d4cf745a71bd5ba53d008a1873948e11b5"
  license "MIT"

  depends_on "rust" => :build
  depends_on "ghostscript"

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
    (lib/"pdf-to-typst").install "tools"
  end

  test do
    assert_match "Usage: pdf-to-typst", shell_output("#{bin}/pdf-to-typst --help")
    assert_path_exists lib/"pdf-to-typst/tools/extract_non_text_regions.py"
  end
end
