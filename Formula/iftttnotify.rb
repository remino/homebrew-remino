class Iftttnotify < Formula
  desc "Send notification to IFTTT Webhook using Web request"
  homepage "https://github.com/remino/iftttnotify"
  url "https://api.github.com/repos/remino/iftttnotify/zipball/v1.0.1"
  version "1.0.1"
  sha256 "31557c7ea2fb3cb1cbe5b69e9d0a02414a44565ff028e2f6f04221d804f9f356"
  license "MIT"

  def install
    bin.install "./iftttnotify"
  end

  test do
    system "./iftttnotify", "-v"
  end
end
