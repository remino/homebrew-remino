# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "1.0.0"
  url "https://github.com/remino/remutils/releases/download/litesite@1.0.0/litesite@1.0.0.tar.gz"
  sha256 "f234846d97b8d71ce53c892c40636d2379a8eb74f841060a98cc3cf764f8c437"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/rsdeploy"
  revision 1

  depends_on "bash"
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
