# vim: set ft=ruby :
class Mkx < Formula
  desc "Make new executable shell script file from template."
  version "3.3.0"
  url "https://github.com/remino/remutils/releases/download/mkx@3.3.0/mkx@3.3.0.tar.gz"
  sha256 "bc6f259fa0afcbc8768305b1790c0fb95aa6e93027b78c19d8a9785ffb165e63"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "mkx"
    lib.install Dir["lib/*"]
    pkgshare.install "templates"
    man1.install "man/mkx.1"
  end

  test do
    out = shell_output("#{bin}/mkx -v")
    assert_match version.to_s, out
  end
end
