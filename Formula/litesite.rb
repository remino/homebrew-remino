# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "2.1.0"
  url "https://github.com/remino/remutils/releases/download/litesite@2.1.0/litesite@2.1.0.tar.gz"
  sha256 "ec43cdb85da36c524ea5cc15787981d58909ff098a12f89732412b66009046d2"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/litesite"
  revision 1

  depends_on "rust" => :build
  depends_on "imagemagick"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
    man1.install "man/litesite.1"
  end

  test do
    out = shell_output("#{bin}/litesite -v")
    assert_match version.to_s, out
  end
end
