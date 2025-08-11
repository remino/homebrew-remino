class Mkx < Formula
  desc "A script to make scripts"
  homepage "https://github.com/remino/mkx"
  url "https://api.github.com/repos/remino/mkx/tarball/v3.2.0"
  sha256 "14bce1de0dccddf1dd9edca87b2392e6e637b585748596968bede9e7d3cd01ea"
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
