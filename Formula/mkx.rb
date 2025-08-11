class Mkx < Formula
  desc "A script to make scripts"
  homepage "https://github.com/remino/mkx"
  url "https://api.github.com/repos/remino/mkx/tarball/v3.2.4"
  sha256 "82cb81ad44b029edfaf95961d3bc1a3371390333d3289d01398417441d3ce7f4"
  license "ISC"

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
