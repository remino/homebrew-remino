# vim: set ft=ruby :
class Mkwebalbum < Formula
  desc "Generate a responsive HTML photo album from a directory"
  version "1.4.0"
  url "https://github.com/remino/remutils/releases/download/mkwebalbum@1.4.0/mkwebalbum@1.4.0.tar.gz"
  sha256 "2cf26abd3c757070e3897a4f5b2bb73f07b3c1a360e75e6e2a90157c446cc9d4"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "imagemagick"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "mkwebalbum"
    man1.install "man/mkwebalbum.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mkwebalbum -v")
  end
end
