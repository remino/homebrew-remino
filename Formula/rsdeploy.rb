# vim: set ft=ruby :
class Rsdeploy < Formula
  desc "Deploy directory to remote server by using rsync."
  version "1.1.1"
  url "https://github.com/remino/remutils/releases/download/rsdeploy@1.1.1/rsdeploy@1.1.1.tar.gz"
  sha256 "7feb6f297011bd20def83def58bef473678b6f2b714046cd454a96d04bb47d9f"
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
