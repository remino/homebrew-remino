# vim: set ft=ruby :
class Rrrr < Formula
  desc "Create rsync snapshot backups over SSH"
  version "1.2.2"
  url "https://github.com/remino/remutils/releases/download/rrrr@1.2.2/rrrr@1.2.2.tar.gz"
  sha256 "32bc28a2ef0d76a11cfdaaf832ada58dffb5dd4e3120bed6f61108e931163022"
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
