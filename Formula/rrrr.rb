# vim: set ft=ruby :
class Rrrr < Formula
  desc "Create rsync snapshot backups over SSH"
  version "2.0.1"
  url "https://github.com/remino/remutils/releases/download/rrrr@2.0.1/rrrr@2.0.1.tar.gz"
  sha256 "b2dd6a61e6191c77c0bc7ef0d3d97e2f040dcea4eac4b9c18c05c49a4767d58c"
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
