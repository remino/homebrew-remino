# vim: set ft=ruby :
class Iftttnotify < Formula
  desc "Send IFTTT Webhooks notifications from the command-line"
  homepage "https://github.com/remino/remutils/tree/main/iftttnotify"
  url "https://github.com/remino/remutils/releases/download/iftttnotify@1.0.1/iftttnotify@1.0.1.tar.gz"
  sha256 "ff29a845a820e9fd518942c2cd13d034825b59bc171f180b659f9e2b52c4eee1"
  license "ISC"
  revision 2

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
