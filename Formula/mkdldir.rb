class Mkdldir < Formula
  desc "Create password-protected download directory for Apache"
  homepage "https://github.com/remino/mkdldir"
  url "https://api.github.com/repos/remino/mkdldir/zipball/v1.0.0"
  version "1.0.0"
  sha256 "371132a4af608758e2208106c478de3216a49403b6daf30ff3068d872b3292ca"
  license "MIT"

  def install
    bin.install "./mkdldir"
  end

  test do
    system "./mkdldir", "-v"
  end
end
