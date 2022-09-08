class Ifip < Formula
  desc "List network interfaces and their IP addresses"
  homepage "https://github.com/remino/ifip"
  url "https://api.github.com/repos/remino/ifip/zipball/v1.0.0"
  version "1.0.0"
  sha256 "c1f9678499bfe3ffcf70a7b023a78c3ec25ff80f94da63f339dacaa48970b9a4"
  license "MIT"

  def install
    bin.install "./ifip"
  end

  test do
    system "./ifip", "-v"
  end
end
