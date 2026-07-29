# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "2.2.0"
  url "https://github.com/remino/remutils/releases/download/litesite@2.2.0/litesite@2.2.0.tar.gz"
  sha256 "9e33244ac90fdb731ebfd55df12a26c8b712e34117ce7e93a8bdfb2c7e2a8e0a"
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
