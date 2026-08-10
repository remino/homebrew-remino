# vim: set ft=ruby :
class Comprose < Formula
  desc "Create and import prose content entries."
  version "0.2.0"
  url "https://github.com/remino/remutils/releases/download/comprose@0.2.0/comprose@0.2.0.tar.gz"
  sha256 "4d196c0eec1de1283373092540e627d0b3e356372887297317138b37720ce305"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "imagemagick"
  depends_on "node"

  def install
    libexec.install Dir["*"]
    cd libexec do
      system "npm", "install", "--omit=dev"
    end

    bin.install_symlink libexec / "comprose" => "comprose"
    man1.install libexec / "man/comprose.1"
  end

  test do
    out = shell_output("#{bin}/comprose help")
    assert_match "USAGE:", out
  end
end
