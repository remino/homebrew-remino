# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "1.1.1"
  url "https://github.com/remino/remutils/releases/download/litesite@1.1.1/litesite@1.1.1.tar.gz"
  sha256 "d8f506d70f0e8ce0d3e0e14f896b0b32e6bfbb565f2036d433fca4e1df452b9a"
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
