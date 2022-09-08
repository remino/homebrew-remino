class Mkx < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/mkx"
  url "https://api.github.com/repos/remino/mkx/zipball/v2.0.0"
  version "2.0.0"
  sha256 "5e9760c1b5f96f12de4a12c3ce633aa2322f4b1c093574e57dfe72f552fcae64"
  license "MIT"

  def install
    bin.install "./mkx"
  end

  test do
    system "./mkx", "-v"
  end
end
