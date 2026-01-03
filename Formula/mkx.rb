# vim: set ft=ruby :
class Mkx < Formula
  desc "Make new executable shell script file from template."
  version "3.2.4"
  url "https://github.com/remino/remutils/releases/download/mkx@3.2.4/mkx@3.2.4.tar.gz"
  sha256 "6796fb712d9bfcf3b4d625f69f4f00e3498685fdbd4644f8a7ad7d94af36e5a1"
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
