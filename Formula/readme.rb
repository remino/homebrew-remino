# vim: set ft=ruby :
class Readme < Formula
  desc "Open the nearest README file"
  url "https://github.com/remino/remutils/releases/download/readme@0.2.0/readme@0.2.0.tar.gz"
  sha256 "71993f18e8e1b0a19e1f87014df7566908aff39bf52ee51db59270879c01cc71"
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
