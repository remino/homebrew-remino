class Vidmod < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/vidmod"
  url "https://api.github.com/repos/remino/vidmod/zipball/v1.0.1"
  version "1.0.1"
  sha256 "0a85f580de09341a634403caf4df97398865c4496cf508aacb7c5333599d2f56"
  license "MIT"

  def install
    bin.install "./vidmod"
  end

  test do
    system "./vidmod", "-v"
  end
end
