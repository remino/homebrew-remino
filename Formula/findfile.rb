class Findfile < Formula
  desc "Quickly find a file by pattern in the current directory using ‘find’"
  homepage "https://github.com/remino/findfile"
  url "https://api.github.com/repos/remino/findfile/zipball/v1.0.0"
  version "1.0.0"
  sha256 "45ee326f9963b4e4c0350c825d0f8a54fd198e6c4a016e145afd8bc9d1972a91"
  license "ISC"

  def install
    bin.install "./findfile"
  end

  test do
    system "./findfile", "-v"
  end
end
