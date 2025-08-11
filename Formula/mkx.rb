class Mkx < Formula
  desc "A script to make scripts"
  homepage "https://github.com/remino/mkx"
  url "https://api.github.com/repos/remino/mkx/tarball/v3.2.2"
  sha256 "808e60e9e736176257ee28dd33db16e34ce447eed221a13465f45154ff0b18ed"
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
