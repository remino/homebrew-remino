# vim: set ft=ruby :
class Imgmod < Formula
  desc "Image modification helpers."
  version "2.2.0"
  url "https://github.com/remino/remutils/releases/download/imgmod@2.2.0/imgmod@2.2.0.tar.gz"
  sha256 "0d8a42e0eb908fca1b21d2b73fb14995679f606d655e413c9f9fae72950cbbf6"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"
  depends_on "imagemagick"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "imgmod" => "imgmod"
    bash_completion.install libexec / "completions/bash/imgmod" => "imgmod"
    zsh_completion.install libexec / "completions/zsh/_imgmod" => "_imgmod"
    fish_completion.install libexec / "completions/fish/imgmod.fish"
    man1.install Dir["#{libexec}/man/*.1"]
  end

  test do
    out = shell_output("#{bin}/imgmod -v")
    assert_match version.to_s, out
  end
end
