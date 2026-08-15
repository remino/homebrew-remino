# vim: set ft=ruby :
class Webshot < Formula
  desc "Capture a webpage as an image."
  version "1.1.1"
  url "https://github.com/remino/remutils/releases/download/webshot@1.1.1/webshot@1.1.1.tar.gz"
  sha256 "ec86779edcc1090d5b03ea8a39e86b05ee6f912a543f30b03779e5a5ab0c3e86"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "node"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install Dir["*"]
    cd libexec do
      system "npm", "install", "--omit=dev"
    end

    bin.install_symlink libexec / "webshot" => "webshot"
    man1.install libexec / "man/webshot.1"
  end

  test do
    out = shell_output("#{bin}/webshot -h")
    assert_match "Usage: webshot", out
  end
end
