# vim: set ft=ruby :
class Imgmod < Formula
  desc "Image modification helpers."
  version "1.4.1"
  url "https://github.com/remino/remutils/releases/download/imgmod@1.4.1/imgmod@1.4.1.tar.gz"
  sha256 "9b0d5719f344e86744428763dbf3a6d10b1196e2674eb922fd7f4be8a293bd3e"
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
