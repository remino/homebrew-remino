# vim: set ft=ruby :
class File2dataurl < Formula
  desc "Convert file to base64 data URL."
  version "1.0.2"
  url "https://github.com/remino/remutils/releases/download/file2dataurl@1.0.2/file2dataurl@1.0.2.tar.gz"
  sha256 "c00f6fa540ea5f5474a78038152b6447ad449f4b382ec6c8a9c794f448d0fef2"
  license "ISC"
  homepage "https://github.com/remino/remutils"
  revision 1

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "file2dataurl"
  end

  test do
    out = shell_output("#{bin}/file2dataurl -v")
    assert_match version.to_s, out
  end
end
