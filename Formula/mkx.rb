class Mkx < Formula
  desc "A script to make scripts"
  homepage "https://github.com/remino/mkx"
  url "https://api.github.com/repos/remino/mkx/tarball/v3.2.1"
  sha256 "785ecfb4ed900d65360aaf4cfc9dd01d417ea09f8e9496f773436541c4851c22"
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
