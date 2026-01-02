# vim: set ft=ruby :
class Hello < Formula
  desc "Just saying hello!"
  version "1.0.1"
  url "https://github.com/remino/remutils/releases/download/hello@1.0.1/hello@1.0.1.tar.gz"
  sha256 "bb286d8841efc934922a38cdba964421c5aaf27abda20ce09ca11a9082dcf28f"
  license "ISC"
  homepage "https://github.com/remino/remutils"
  revision 1

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    Dir.chdir(tag) do
      bin.install "hello"
    end
  end

  test do
    out = shell_output("#{bin}/hello")
    assert_match "hello", out
  end
end
