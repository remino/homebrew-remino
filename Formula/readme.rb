# vim: set ft=ruby :
class Readme < Formula
  desc "Open the nearest README file"
  version "0.1.0"
  url "https://github.com/remino/remutils/releases/download/readme@0.1.0/readme@0.1.0.tar.gz"
  sha256 "3a991a30f2be0eefe31de46fba260e016f850d48beb135064a4c6c2401c91bee"
  license "ISC"
  homepage "https://remino.net/readme/"

  depends_on "bash"
  depends_on "glow" => :optional

  def install
    bin.install "readme"
    man1.install "man/readme.1"
  end

  test do
    (testpath/"README.md").write "# Test\n"
    assert_match "README.md", shell_output("#{bin}/readme -l")
  end
end
