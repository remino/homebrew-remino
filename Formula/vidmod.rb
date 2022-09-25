class Vidmod < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/vidmod"
  url "https://api.github.com/repos/remino/vidmod/zipball/v1.0.0"
  version "1.0.0"
  sha256 "d74055f669095508435daffef9bb7ec983a9ed45dacf9327aaa3953f8f1e3aca"
  license "MIT"

  def install
    bin.install "./vidmod"
  end

  test do
    system "./vidmod", "-v"
  end
end
