# vim: set ft=ruby :
class Mkprj < Formula
  desc "Create dated project directories from optional templates."
  url "https://github.com/remino/remutils/releases/download/mkprj@3.0.4/mkprj@3.0.4.tar.gz"
  sha256 "d6c7976987743145f76e09c7873de6353bf08abc12c0fffdb9db6fd33c873eb5"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "mkprj"
    libexec.install "lib", "templates"
    man1.install "man/mkprj.1"
  end

  test do
    system "#{bin}/mkprj", "-v"
  end
end
