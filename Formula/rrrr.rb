# vim: set ft=ruby :
class Rrrr < Formula
  desc "Create rsync snapshot backups over SSH"
  version "2.1.0"
  url "https://github.com/remino/remutils/releases/download/rrrr@2.1.0/rrrr@2.1.0.tar.gz"
  sha256 "2ff3651ade6d0942b18c254a806e645d127d77213d63d094ba432eb6ed1a4341"
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
