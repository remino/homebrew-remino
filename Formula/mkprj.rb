# vim: set ft=ruby :
class Mkprj < Formula
  desc "Create dated project directories from optional templates."
  version "3.0.0"
  url "https://github.com/remino/remutils/releases/download/mkprj@3.0.0/mkprj@3.0.0.tar.gz"
  sha256 "4217888ac43acd536002440809975320d765a5dbb1d4b4366bb17f56f5e89c3f"
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
