class Maconf < Formula
  desc "Get and set various settings in macOS"
  homepage "https://github.com/remino/maconf"
  url "https://github.com/remino/maconf/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "51b8223eba3a00b3de97e96acb4cbac9ea5fcbf64110b9eec7aee967300eb2ae"
  license "MIT"

  def install
    bin.install "maconf"
  end

  test do
    system "maconf", "-v"
  end
end
