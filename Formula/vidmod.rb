class Vidmod < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/vidmod"
  url "https://api.github.com/repos/remino/vidmod/zipball/v1.0.2"
  version "1.0.2"
  sha256 "38668a606ac71f334af35e50c16a8684c313a4c95518ffb7ebbfe4ff1c6a87cc"
  license "MIT"

  def install
    bin.install "./vidmod"
  end

  test do
    system "./vidmod", "-v"
  end
end
