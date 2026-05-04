# vim: set ft=ruby :
class Webshot < Formula
  desc "Capture a webpage as an image."
  version "1.1.0"
  url "https://github.com/remino/remutils/releases/download/webshot@1.1.0/webshot@1.1.0.tar.gz"
  sha256 "6920f2a8c46fa86f0f1093e3dcdfa8f3867c75bedd200982be9cf41962a96ba3"
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
