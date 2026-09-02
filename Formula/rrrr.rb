# vim: set ft=ruby :
class Rrrr < Formula
  desc "Create rsync snapshot backups over SSH"
  version "1.2.0"
  url "https://github.com/remino/remutils/releases/download/rrrr@1.2.0/rrrr@1.2.0.tar.gz"
  sha256 "c588c558f00a5e7153ff0ec4c5d995677741745a8ee3e151aeca1e60a918aa20"
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
