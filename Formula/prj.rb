# vim: set ft=ruby :
class Prj < Formula
  desc "Create and manage dated project directories from optional templates."
  url "https://github.com/remino/remutils/releases/download/prj@4.0.0/prj@4.0.0.tar.gz"
  sha256 "c06646035c593e41d248e2df45a43e2d9034a917f7bba2cc2f29d8b72ed44616"
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
