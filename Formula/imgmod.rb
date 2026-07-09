# vim: set ft=ruby :
class Imgmod < Formula
  desc "Image modification helpers."
  version "2.0.0"
  url "https://github.com/remino/remutils/releases/download/imgmod@2.0.0/imgmod@2.0.0.tar.gz"
  sha256 "51d3d471ff0a22d8c75262a14730dad3e9cb7c2126ef722bb5be4cb4fa4c71a7"
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
