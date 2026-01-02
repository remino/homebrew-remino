# vim: set ft=ruby :
class Liverename < Formula
  desc "Watches a file with watchexec and renames it with a timestamp when it is created."
  version "1.0.1"
  url "https://github.com/remino/remutils/releases/download/liverename@1.0.1/liverename@1.0.1.tar.gz"
  sha256 "5712846c277f5c0a6ca7e471cb7fd047b26c365c33350f984be94fa56647ed73"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "watchexec"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "liverename"
  end

  test do
    # TODO Add better tests. (Challenging with watchexec.)
    out = shell_output("#{bin}/liverename -v")
    assert_match version.to_s, out
  end
end
