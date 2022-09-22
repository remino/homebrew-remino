class Waituntil < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/waituntil"
  url "https://api.github.com/repos/remino/mkx/zipball/v1.0.0"
  version "1.0.0"
  sha256 "faaa71aad12e2c4d5346d795d0b5f70dd385a2ef59b2e0c7ad16ee81ea5c87b7"
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
