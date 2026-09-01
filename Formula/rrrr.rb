# vim: set ft=ruby :
class Rrrr < Formula
  desc "Create rsync snapshot backups over SSH"
  version "1.0.1"
  url "https://github.com/remino/remutils/releases/download/rrrr@1.0.1/rrrr@1.0.1.tar.gz"
  sha256 "87245e4c7d729bbf4d9a831b902c649dec070563c3ff1676ae327224cf30674b"
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
