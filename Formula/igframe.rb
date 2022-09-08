class Igframe < Formula
  desc "Fit image into a square frame fit for Instagram"
  homepage "https://github.com/remino/igframe"
  url "https://api.github.com/repos/remino/igframe/zipball/v1.1.0"
  version "1.1.0"
  sha256 "2cdd298fc3e5646e4fa67050ce8c5737d928a840f16769ed55e242e9aabeebfd"
  license "MIT"

  def install
    bin.install "./igframe"
  end

  test do
    system "./igframe", "-v"
  end
end
