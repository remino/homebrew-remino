class Waituntil < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/waituntil"
  url "https://api.github.com/repos/remino/waituntil/zipball/v1.1.0"
  version "1.1.0"
  sha256 "07d9046a670cb714a1729b197f4f6e3a959ed25d2d66bcf72eca135654dfa005"
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
