# vim: set ft=ruby :
class Mkiso < Formula
  desc "Wrapper for hdiutil to make an ISO volume file out of a directory."
  version "1.0.0"
  url "https://github.com/remino/remutils/releases/download/mkiso@1.0.0/mkiso@1.0.0.tar.gz"
  sha256 "af06e7a7518efc43ce3406b9eca2af2e97c8ca850f2d5025a2997859c74457d1"
  license "ISC"
  homepage "https://github.com/remino/remutils"
  revision 1

  depends_on "bash"
  uses_from_macos "hdiutil"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "mkiso"
  end

  test do
    (testpath / "input").mkpath
    (testpath / "input/hello.txt").write("hello")

    system bin / "mkiso", "input", "out.iso"

    assert_predicate testpath / "out.iso", :exist?
    assert_predicate testpath / "out.iso", :file?
    assert (testpath / "out.iso").size > 0
  end
end
