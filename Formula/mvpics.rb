class Mvpics < Formula
  desc "Move photos from memory card and transfer them into dated folders"
  homepage "https://github.com/remino/mvpics"
  url "https://api.github.com/repos/remino/mvpics/zipball/v1.0.0"
  version "1.0.0"
  sha256 "7a08a735d11992e83c83dbe6450bc95012f74cec9ba397df2f9310509f35e162"
  license "MIT"

  def install
    bin.install "./mvpics"
  end

  test do
    system "./mvpics", "-v"
  end
end
