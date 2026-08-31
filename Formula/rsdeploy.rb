# vim: set ft=ruby :
class Rsdeploy < Formula
  desc "Deploy directory to remote server by using rsync."
  version "1.1.2"
  url "https://github.com/remino/remutils/releases/download/rsdeploy@1.1.2/rsdeploy@1.1.2.tar.gz"
  sha256 "8623a5229829b7fbe85efd92dceedfd30cc110de77478a8583b9cc927a2102a2"
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
