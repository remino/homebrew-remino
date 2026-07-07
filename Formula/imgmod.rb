# vim: set ft=ruby :
class Imgmod < Formula
  desc "Image modification helpers."
  version "1.2.0"
  url "https://github.com/remino/remutils/releases/download/imgmod@1.2.0/imgmod@1.2.0.tar.gz"
  sha256 "4ff2d43bbf7cb71a2ec78e9877aacfcb825acb51d87afc42f89fc73ca173cf31"
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
    man1.install Dir["man/*.1"]
  end

  test do
    out = shell_output("#{bin}/imgmod -v")
    assert_match version.to_s, out
  end
end
