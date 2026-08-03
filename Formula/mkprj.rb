# vim: set ft=ruby :
class Mkprj < Formula
  desc "Create dated project directories from optional templates."
  version "3.0.1"
  url "https://github.com/remino/remutils/releases/download/mkprj@3.0.1/mkprj@3.0.1.tar.gz"
  sha256 "4099180ffbddd752ef5a9d96e4986a0b7ce322c812e01674bba966cde80169f8"
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
