# vim: set ft=ruby :
class Rrrr < Formula
  desc "Create rsync snapshot backups over SSH"
  version "1.2.1"
  url "https://github.com/remino/remutils/releases/download/rrrr@1.2.1/rrrr@1.2.1.tar.gz"
  sha256 "a2001194548e45f52788e8253a478f40258d48e095d9865212eae6973eea9a13"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/rrrr"

  depends_on "bash"
  depends_on "rsync"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "rrrr"
    man1.install "man/rrrr.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rrrr -V")
  end
end
