# vim: set ft=ruby :
class Mkprj < Formula
  desc "Create dated project directories from optional templates."
  version "3.0.3"
  url "https://github.com/remino/remutils/releases/download/mkprj@3.0.3/mkprj@3.0.3.tar.gz"
  sha256 "c1c654018a2d6c727c9a484c70d748b256d09beaa018575bce00a1832dd2cd9a"
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
