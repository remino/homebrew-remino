# vim: set ft=ruby :
class Mkiso < Formula
  desc "Wrapper for hdiutil to make an ISO volume file out of a directory."
  version "1.0.1"
  url "https://github.com/remino/remutils/releases/download/mkiso@1.0.1/mkiso@1.0.1.tar.gz"
  sha256 "8810354f1edf5ce37897ea5e4fe3f7caefd5d19893d45b639166445a1bbfb63a"
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
