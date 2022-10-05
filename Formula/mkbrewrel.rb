class Mkbrewrel < Formula
  desc "Create Brew release from GitHub release"
  homepage "https://github.com/remino/mkbrewrel"
  url "https://api.github.com/repos/remino/mkbrewrel/tarball/v1.0.1"
  version "1.0.1"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  def install
    bin.install "./mkbrewlrel"
  end

  test do
    system "./mkbrewlrel", "-v"
  end
end
