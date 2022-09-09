class Unidir < Formula
  desc "Unify the content of multiple directories into one using symlinks"
  homepage "https://github.com/remino/unidir"
  url "https://api.github.com/repos/remino/unidir/zipball/v1.0.0"
  version "1.0.0"
  sha256 "c582192e647cb8976197febe1e47e2cadeec7d5a4b8da95fbde003656ccee486"
  license "ISC"

  def install
    bin.install "./unidir"
  end

  test do
    system "./unidir", "-v"
  end
end
