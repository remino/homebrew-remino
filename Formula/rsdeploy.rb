# vim: set ft=ruby :
class Rsdeploy < Formula
  desc "Deploy directory to remote server by using rsync."
  version "1.1.3"
  url "https://github.com/remino/remutils/releases/download/rsdeploy@1.1.3/rsdeploy@1.1.3.tar.gz"
  sha256 "47e10426cf0e958056ca69a0ed1f7c88d32dc23c2e82b537ad6d6d6eeb8da2d3"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "rsdeploy"
    man1.install "man/rsdeploy.1"
  end

  test do
    out = shell_output("#{bin}/rsdeploy -v")
    assert_match version.to_s, out
  end
end
