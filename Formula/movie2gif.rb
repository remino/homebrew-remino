class Movie2gif < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/movie2gif"
  url "https://api.github.com/repos/remino/movie2gif/zipball/v1.0.0"
  version "1.0.0"
  sha256 "c0640795795021230c7264f3425a05c32907490458f21cf4a56aff89ba5ffb06"
  license "MIT"

  def install
    bin.install "./movie2gif"
  end

  test do
    system "./movie2gif", "-v"
  end
end
