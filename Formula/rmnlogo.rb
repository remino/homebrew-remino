# vim: set ft=ruby :
class Rmnlogo < Formula
  desc "Outputs the RÉMINO logo in ASCII art and ANSI colours."
  version "1.1.1"
  url "https://github.com/remino/remutils/releases/download/rmnlogo@1.1.1/rmnlogo@1.1.1.tar.gz"
  sha256 "eba6d7a33ca4fe3ebe4ec6117860fa949077329f31fbe3d0d950175b6b398bad"
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
