class Maconf < Formula
  desc "Get and set various settings in macOS"
  homepage "https://github.com/remino/maconf"
  url "https://github.com/remino/maconf/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  def install
    bin.install "maconf"
  end

  test do
    system "maconf", "-v"
  end
end
