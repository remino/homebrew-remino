# vim: set ft=ruby :
class Prj < Formula
  desc "Create and manage dated project directories from optional templates."
  url "https://github.com/remino/remutils/releases/download/prj@4.0.2/prj@4.0.2.tar.gz"
  sha256 "10f431e49bf568002fa779a30c1a830920421774dd611029fd10aaa1336a2b64"
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
    libexec.install "lib" => "prj/lib", "templates" => "prj/templates"
    man1.install "man/prj.1"
    man1.install "man/mkprj.1"
  end

  test do
    system "#{bin}/prj", "-v"
    system "#{bin}/mkprj", "-v"
  end
end
