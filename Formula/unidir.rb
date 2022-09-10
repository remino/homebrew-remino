class Unidir < Formula
  desc "Unify the content of multiple directories into one using symlinks"
  homepage "https://github.com/remino/unidir"
  url "https://api.github.com/repos/remino/unidir/zipball/v1.0.3"
  version "1.0.3"
  sha256 "b4cb3062889a64494c9eef8a91fb34bf6e5317806e2ff287312deb4b84318a6c"
  license "ISC"

  def install
    bin.install "./unidir"
  end

  test do
    system "./unidir", "-v"
  end
end
