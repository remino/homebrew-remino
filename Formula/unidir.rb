class Unidir < Formula
  desc "Unify the content of multiple directories into one using symlinks"
  homepage "https://github.com/remino/unidir"
  url "https://api.github.com/repos/remino/unidir/zipball/v1.0.2"
  version "1.0.2"
  sha256 "603ae8e56b1ae21bd2f3d16f88ef4b56cbc0467b76340d628ea42ea2554d3142"
  license "ISC"

  def install
    bin.install "./unidir"
  end

  test do
    system "./unidir", "-v"
  end
end
