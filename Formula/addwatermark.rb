# vim: set ft=ruby :
class Addwatermark < Formula
  desc "Compatibility wrapper for imgmod watermark"
  version "2.1.1"
  url "https://github.com/remino/remutils/releases/download/addwatermark@2.1.1/addwatermark@2.1.1.tar.gz"
  sha256 "e2fad1757986eb01a75abf1411b1e395b24af8353c35cd41e68d2f6f35a3a43c"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  deprecate! date: "2026-08-01", because: "has been merged into imgmod", replacement_formula: "imgmod"

  depends_on "imgmod"

  def install
    bin.install "addwatermark"
    man1.install "man/addwatermark.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/addwatermark --version")
  end
end
