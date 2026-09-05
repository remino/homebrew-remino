# vim: set ft=ruby :
class Rmnlogo < Formula
  desc "Outputs the RÉMINO logo in ASCII art and ANSI colours."
  version "1.1.2"
  url "https://github.com/remino/remutils/releases/download/rmnlogo@1.1.2/rmnlogo@1.1.2.tar.gz"
  sha256 "301176ad3265832261c239c6c8bc2d1931fa0eec1766fc7eac43b998eb278588"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/rmnlogo"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "rmnlogo"
    man1.install "man/rmnlogo.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rmnlogo -v")
  end
end
