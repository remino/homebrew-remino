class Jeksite < Formula
  desc "Plain and simple Jekyll site template ideal for GitHub Pages"
  homepage "https://github.com/remino/jeksite"
  url "https://api.github.com/repos/remino/jeksite/zipball/v1.1.0"
  version "1.1.0"
  sha256 "238b006daedda8dd2715525814c0c4bcda54d4cf4c70321c0e56c415ce27a9af"
  license "ISC"

  def install
    bin.install "./jeksite"
  end

  test do
    system "./jeksite", "-v"
  end
end