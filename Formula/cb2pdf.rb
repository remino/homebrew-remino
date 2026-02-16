# vim: set ft=ruby :
class Cb2pdf < Formula
  desc "Convert .cbz and .cbr comic archives to PDF."
  version "1.1.0"
  url "https://github.com/remino/remutils/releases/download/cb2pdf@1.1.0/cb2pdf@1.1.0.tar.gz"
  sha256 "1ba56b6b439b92ed5d419106adad6ee9b29da6df2bad5ca6a5a97982567c498a"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"
  depends_on "7zip"
  depends_on "img2pdf"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "cb2pdf"
    man1.install "man/cb2pdf.1"
  end

  test do
    out = shell_output("#{bin}/cb2pdf -v")
    assert_match version.to_s, out
  end
end
