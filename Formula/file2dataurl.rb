# vim: set ft=ruby :
class File2dataurl < Formula
  desc "Convert file to base64 data URL."
  version "1.0.3"
  url "https://github.com/remino/remutils/releases/download/file2dataurl@1.0.3/file2dataurl@1.0.3.tar.gz"
  sha256 "f811965b8513055102c0b9d36dfa7ec64b46b48ea388c4b01e040806d091c0d2"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "file2dataurl"
    man1.install "man/file2dataurl.1"
  end

  test do
    out = shell_output("#{bin}/file2dataurl -v")
    assert_match version.to_s, out
  end
end
