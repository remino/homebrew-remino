# vim: set ft=ruby :
class Mkiso < Formula
  desc "Wrapper for hdiutil to make an ISO volume file out of a directory."
  version "1.0.2"
  url "https://github.com/remino/remutils/releases/download/mkiso@1.0.2/mkiso@1.0.2.tar.gz"
  sha256 "5e4908e0d5005c3ed9065068b39557854b4c078fa1a98f5311ef4b8a3d7615ed"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"
  uses_from_macos "hdiutil"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "mkiso"
    man1.install "man/mkiso.1"
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
