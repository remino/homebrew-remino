# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "1.3.1"
  url "https://github.com/remino/remutils/releases/download/litesite@1.3.1/litesite@1.3.1.tar.gz"
  sha256 "d003618c9a4dbf506274e849578d876a5c5c5be6751a72db416cae4cc40950c1"
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
