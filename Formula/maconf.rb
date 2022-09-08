class Maconf < Formula
  desc "Get and set various settings in macOS"
  homepage "https://github.com/remino/maconf"
  url "https://api.github.com/repos/remino/maconf/zipball/v1.1.0"
  version "1.1.0"
  sha256 "c2140e54908f3ebc638cd2b2cb29056f80c757af33ce2a09620ad59005c3543f"
  license "MIT"

  def install
    bin.install "./maconf"
  end

  test do
    system "./maconf", "-v"
  end
end
