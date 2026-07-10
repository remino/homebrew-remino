# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "2.0.0"
  url "https://github.com/remino/remutils/releases/download/litesite@2.0.0/litesite@2.0.0.tar.gz"
  sha256 "2902946c34e39ef207201c47c4b62c7998c5bf617d2c93b1ee6f148a38abfd14"
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
