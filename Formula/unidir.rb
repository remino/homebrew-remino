class Unidir < Formula
  desc "Unify the content of multiple directories into one using symlinks"
  homepage "https://github.com/remino/unidir"
  url "https://api.github.com/repos/remino/unidir/zipball/v1.0.0"
  version "1.0.0"
  sha256 "d5c760a21f7bc1327f04b5b83368e25ab1e3043ef82e58984821c1f215380f1a"
  license "ISC"

  def install
    bin.install "./unidir"
  end

  test do
    system "./unidir", "-v"
  end
end
