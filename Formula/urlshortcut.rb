# vim: set ft=ruby :
class Urlshortcut < Formula
  desc "Read and write Internet Shortcut files"
  version "0.1.0"
  url "https://github.com/remino/remutils/releases/download/urlshortcut@0.1.0/urlshortcut@0.1.0.tar.gz"
  sha256 "bfd05827858896c9571d153d7351411b55985176cbe454f9977f844515ae2046"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/urlshortcut"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "urlshortcut"
    man1.install "man/urlshortcut.1"
  end

  test do
    assert_equal "https://remino.net", shell_output("#{bin}/urlshortcut write remino.net | #{bin}/urlshortcut read").strip
  end
end
