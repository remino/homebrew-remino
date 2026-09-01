# vim: set ft=ruby :
class Genrand < Formula
  desc "Generate cryptographically random strings"
  version "0.1.0"
  url "https://github.com/remino/remutils/releases/download/genrand@0.1.0/genrand@0.1.0.tar.gz"
  sha256 "9ce3eefcf8630193a8a3cb72825f5fa423dc95d1d8de725699e737ab0b47d005"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/genrand"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "genrand"
    man1.install "man/genrand.1"
  end

  test do
    assert_match /^[a-z0-9]{8}$/, shell_output("#{bin}/genrand 8 lower").strip
  end
end
