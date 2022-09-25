class Iftttnotify < Formula
  desc "Send notification to IFTTT Webhook using Web request"
  homepage "https://github.com/remino/iftttnotify"
  url "https://api.github.com/repos/remino/iftttnotify/zipball/v1.0.0"
  version "1.0.0"
  sha256 "2bd17ebb108031d1df1ed4509aa35a859b196b6ddfcecb72dc1169063d2d3431"
  license "MIT"

  def install
    bin.install "./iftttnotify"
  end

  test do
    system "./iftttnotify", "-v"
  end
end
