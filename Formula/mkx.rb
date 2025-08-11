class Mkx < Formula
  desc "A script to make scripts"
  homepage "https://github.com/remino/mkx"
  url "https://api.github.com/repos/remino/mkx/tarball/v3.2.3"
  sha256 "28fe2ef949138aa0eb03b85c52e107dd824c0f4ab74a61fce47018e4f83c1af0"
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
