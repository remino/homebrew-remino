class Unidir < Formula
  desc "Unify the content of multiple directories into one using symlinks"
  homepage "https://github.com/remino/unidir"
  url "https://api.github.com/repos/remino/unidir/zipball/v1.0.1"
  version "1.0.1"
  sha256 "217d52ef4437874745ad5efc62f542276d50cedf1f1fc8dd397ed31fd86e831c"
  license "ISC"

  def install
    bin.install "./unidir"
  end

  test do
    system "./unidir", "-v"
  end
end
