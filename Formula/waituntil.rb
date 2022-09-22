class Waituntil < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/waituntil"
  url "https://github.com/remino/waituntil/releases/tag/v1.0.0"
  version "1.0.0"
  sha256 "9a28bca326589590793635b6a441effbe69a396a19bbc5e64921505839bfc597"
  license "MIT"

  def install
    bin.install "./runat"
    bin.install "./waituntil"
  end

  test do
    system "./runat", "-v"
    system "./waituntil", "-v"
  end
end
