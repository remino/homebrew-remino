class Urlsha < Formula
  desc "Get the SHA-256 checksum of a file from a URL"
  homepage "https://github.com/remino/urlsha"
  url "https://api.github.com/repos/remino/urlsha/zipball/v1.0.0"
  version "1.0.0"
  sha256 "390947993dca20e74670de63a907c8338e76b9fe36fc40f4e8aaaf54a879d9e2"
  license "ISC"

  def install
    bin.install "./urlsha"
  end

  test do
    system "./urlsha", "-v"
  end
end
