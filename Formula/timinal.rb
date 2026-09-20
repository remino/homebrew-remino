# vim: set ft=ruby :
class Timinal < Formula
  include Language::Python::Virtualenv

  desc "Render a configurable FIGlet clock"
  url "https://github.com/remino/remutils/releases/download/timinal@0.2.0/timinal@0.2.0.tar.gz"
  sha256 "3887abbf49e56547760c13009921e82ca86ef5a16b3ddc7ac5d87fecd27ba7f4"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/timinal"

  depends_on "figlet"
  depends_on "python@3.14"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    virtualenv_install_with_resources
    man1.install "man/timinal.1"
  end

  test do
    system bin/"timinal", "--format", "%H:%M"
  end
end
