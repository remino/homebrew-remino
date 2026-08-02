# vim: set ft=ruby :
class Liverename < Formula
  desc "Watches a file with watchexec and renames it with a timestamp when it is created."
  version "1.0.2"
  url "https://github.com/remino/remutils/releases/download/liverename@1.0.2/liverename@1.0.2.tar.gz"
  sha256 "3e524f597ae85abfe11d19c9e6d3e4ec6db1ec2f85ccb98e84f4dbb586f2a29b"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "watchexec"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "liverename"
    man1.install "man/liverename.1"
  end

  test do
    # TODO Add better tests. (Challenging with watchexec.)
    out = shell_output("#{bin}/liverename -v")
    assert_match version.to_s, out
  end
end
