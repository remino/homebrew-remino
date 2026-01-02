# vim: set ft=ruby :
class Liverename < Formula
  desc "Watches a file with watchexec and renames it with a timestamp when it is created."
  version "1.0.0"
  url "https://github.com/remino/remutils/releases/download/liverename@1.0.0/liverename@1.0.0.tar.gz"
  sha256 "f58ab57818a953d38ffdbc9bdbf1c58ed241d88b9557bbd245dd38d98aa976ab"
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
