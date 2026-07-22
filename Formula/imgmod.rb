# vim: set ft=ruby :
class Imgmod < Formula
  desc "Image modification helpers."
  version "2.1.0"
  url "https://github.com/remino/remutils/releases/download/imgmod@2.1.0/imgmod@2.1.0.tar.gz"
  sha256 "84ac6f41bbf0f5ea2bde097cc178d6f058f79dd2ae64f9519f43961bb121df75"
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
