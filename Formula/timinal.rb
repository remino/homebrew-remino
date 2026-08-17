# vim: set ft=ruby :
class Timinal < Formula
  desc "Render a configurable FIGlet clock"
  version "0.1.0"
  url "https://github.com/remino/remutils/releases/download/timinal@0.1.0/timinal@0.1.0.tar.gz"
  sha256 "82128f849c06ab977e61b08024649c9c356bee34b0317d9a7835088800a64697"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/timinal"
  revision 1

  depends_on "figlet"
  depends_on "python@3.14"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install "timinal.py"
    (bin/"timinal").write_env_script libexec/"timinal.py", PATH: "#{Formula['python@3.14'].opt_bin}:$PATH"
    man1.install "man/timinal.1"
  end

  test do
    system bin/"timinal", "--format", "%H:%M"
  end
end
