# vim: set ft=ruby :
class Maconf < Formula
  desc "Get and set common macOS preferences"
  url "https://github.com/remino/remutils/releases/download/maconf@1.1.1/maconf@1.1.1.tar.gz"
  sha256 "560100a79f85fdca05f94d56f81b2288319aed6e92332c77b20247a3eda95a02"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/maconf"
  revision 1

  depends_on :macos

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "maconf"
    man1.install "man/maconf.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/maconf -v")
  end
end
