class Mkdldir < Formula
  desc "Create password-protected download directory for Apache"
  homepage "https://github.com/remino/mkdldir"
  url "https://api.github.com/repos/remino/mkdldir/zipball/v1.1.0"
  version "1.1.0"
  sha256 "df5deab9183edd22fc63803299fa07af0357a8853429c5f065a5dc677ca15087"
  license "MIT"

  def install
    bin.install "./mkdldir"
  end

  test do
    system "./mkdldir", "-v"
  end
end
