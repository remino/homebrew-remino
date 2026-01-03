# vim: set ft=ruby :
class Rsdeploy < Formula
  desc "Deploy directory to remote server by using rsync."
  version "1.1.0"
  url "https://github.com/remino/remutils/releases/download/rsdeploy@1.1.0/rsdeploy@1.1.0.tar.gz"
  sha256 "ca602bda3408746e57809c8dbbcc1f03630054889fbf14824a318ceadbc0d798"
  license "ISC"
  homepage "https://github.com/remino/remutils"
  revision 1

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "rsdeploy"
  end

  test do
    out = shell_output("#{bin}/rsdeploy -v")
    assert_match version.to_s, out
  end
end
