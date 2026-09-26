# vim: set ft=ruby :
class Iftttnotify < Formula
  desc "Send IFTTT Webhooks notifications from the command line"
  url "https://github.com/remino/remutils/releases/download/iftttnotify@1.0.1/iftttnotify@1.0.1.tar.gz"
  sha256 "e08931312be8c40d6d575fd17ad456ef535e2b1401cbc4b1fb06d83b2ab6d03d"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/iftttnotify"
  revision 1

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "iftttnotify"
    man1.install "man/iftttnotify.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iftttnotify -v")
  end
end
