# vim: set ft=ruby :
class Rmnlogo < Formula
  desc "Outputs the RÉMINO logo in ASCII art and ANSI colours."
  version "1.1.0"
  url "https://github.com/remino/remutils/releases/download/rmnlogo@1.1.0/rmnlogo@1.1.0.tar.gz"
  sha256 "67aeb2ee41d01c398ae1f99aee29d8775705e69701438ff9acfca595b3dfbd08"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/rmnlogo"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "rmnlogo"
    man1.install "man/rmnlogo.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rmnlogo -v")
  end
end
