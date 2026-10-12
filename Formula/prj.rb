# vim: set ft=ruby :
class Prj < Formula
  desc "Create and manage dated project directories from optional templates."
  url "https://github.com/remino/remutils/releases/download/prj@4.0.1/prj@4.0.1.tar.gz"
  sha256 "7ea7697f4497b8d47546bbc48fad47f7c4a7411ed6ef291b5f3ebb496bb6f4ec"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "prj"
    bin.install "mkprj"
    libexec.install "lib", "templates"
    man1.install "man/prj.1"
    man1.install "man/mkprj.1"
  end

  test do
    system "#{bin}/prj", "-v"
    system "#{bin}/mkprj", "-v"
  end
end
