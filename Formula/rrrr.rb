# vim: set ft=ruby :
class Rrrr < Formula
  desc "Create rsync snapshot backups over SSH"
  version "1.3.0"
  url "https://github.com/remino/remutils/releases/download/rrrr@1.3.0/rrrr@1.3.0.tar.gz"
  sha256 "4f2eb5ef36276a938932289719670c3a788b98ae223ffa06bf8560bc4c6f459e"
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
