# vim: set ft=ruby :
class Mkprj < Formula
  desc "Create dated project directories from optional templates."
  version "3.0.2"
  url "https://github.com/remino/remutils/releases/download/mkprj@3.0.2/mkprj@3.0.2.tar.gz"
  sha256 "0f74480f8a0ab475520bffb856953d148e1a81f8b48c2dfbe8a82e2c567efa15"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "mkprj"
    libexec.install "lib", "templates"
    man1.install "man/mkprj.1"
  end

  test do
    system "#{bin}/mkprj", "-v"
  end
end
