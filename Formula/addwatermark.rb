# vim: set ft=ruby :
class Addwatermark < Formula
  desc "Compatibility wrapper for imgmod watermark"
  version "2.1.0"
  url "https://github.com/remino/remutils/releases/download/addwatermark@2.1.0/addwatermark@2.1.0.tar.gz"
  sha256 "55133054a6eaa6d8c5d18e3a050679573e683428d6f96a17431b4dd1ea3b0798"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  deprecate! date: "2026-08-01", because: "has been merged into imgmod", replacement_formula: "imgmod"

  depends_on "imgmod"

  def install
    bin.install "addwatermark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/addwatermark --version")
  end
end
