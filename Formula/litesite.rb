# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "1.2.0"
  url "https://github.com/remino/remutils/releases/download/litesite@1.2.0/litesite@1.2.0.tar.gz"
  sha256 "0e9e60b5726ab6fdef8fba25cce21430ab6291a4327e11282eb245f484f202ec"
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
