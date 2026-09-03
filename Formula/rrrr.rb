# vim: set ft=ruby :
class Rrrr < Formula
  desc "Create rsync snapshot backups over SSH"
  version "2.0.0"
  url "https://github.com/remino/remutils/releases/download/rrrr@2.0.0/rrrr@2.0.0.tar.gz"
  sha256 "853795905d7adeee24bc4cc6c3da5e90c9a737a72b26763aee42c0dabcf2dabb"
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
