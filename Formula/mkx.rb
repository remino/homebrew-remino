# vim: set ft=ruby :
class Mkx < Formula
  desc "Make new executable shell script file from template."
  version "3.2.5"
  url "https://github.com/remino/remutils/releases/download/mkx@3.2.5/mkx@3.2.5.tar.gz"
  sha256 "e8cc3c0fb5fa9ac899155ade7b3a0d5cc33284fae89dcc6c102659b26abbb393"
  license "ISC"
  homepage "https://github.com/remino/remutils"
  revision 1

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
