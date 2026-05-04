# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "1.0.2"
  url "https://github.com/remino/remutils/releases/download/litesite@1.0.2/litesite@1.0.2.tar.gz"
  sha256 "e112df61d4db84ae7e288394753007aaa6714775e3e4e1a635a8e44f2b851551"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/rsdeploy"
  revision 1

  depends_on "bash"
  depends_on "imagemagick"
  depends_on "node"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "litesite" => "litesite"
    man1.install libexec / "man/litesite.1"
  end

  test do
    out = shell_output("#{bin}/litesite -v")
    assert_match version.to_s, out
  end
end
