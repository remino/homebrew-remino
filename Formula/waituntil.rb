# vim: set ft=ruby :
class Waituntil < Formula
  desc "Wait until a specified time and optionally execute a command."
  version "1.1.0"
  url "https://github.com/remino/remutils/releases/download/waituntil@1.1.0/waituntil@1.1.0.tar.gz"
  sha256 "f9f60667dc69eafe93861c0fd7e32830d29b050202b0167d88866eedb2baaab3"
  license "ISC"
  homepage "https://github.com/remino/remutils"
  revision 1

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "waituntil"
    bin.install "runat"
    man1.install "man/waituntil.1"
    man1.install "man/runat.1"
  end

  test do
    system "#{bin}/waituntil", "-v"
    system "#{bin}/runat", "-v"
  end
end
