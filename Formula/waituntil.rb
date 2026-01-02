# vim: set ft=ruby :
class Waituntil < Formula
  desc "Wait until a specified time and optionally execute a command."
  version "1.1.1"
  url "https://github.com/remino/remutils/releases/download/waituntil@1.1.1/waituntil@1.1.1.tar.gz"
  sha256 "bbada3ca08b2bf3480d30280048a68093728111e857e576b11a1fc3e814de3b8"
  license "ISC"
  homepage "https://github.com/remino/remutils"

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
