class Waituntil < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/waituntil"
  url "https://api.github.com/repos/remino/waituntil/zipball/v1.0.0"
  version "1.0.0"
  sha256 "ad75bffacf9ff03ceef53489f3459cb8b047405898af39c20a1d3dd876142051"
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
