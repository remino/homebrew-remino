# vim: set ft=ruby :
class Vidmod < Formula
  desc "Video modification helpers."
  version "3.2.2"
  url "https://github.com/remino/remutils/releases/download/vidmod@3.2.2/vidmod@3.2.2.tar.gz"
  sha256 "c3bcec450b99e23da860068eedd10433e9ddf236433c04e38f7816214f321b3e"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"
  depends_on "ffmpeg"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec / "vidmod" => "vidmod"
    bash_completion.install libexec / "completions/bash/vidmod" => "vidmod"
    zsh_completion.install libexec / "completions/zsh/_vidmod" => "_vidmod"
    fish_completion.install libexec / "completions/fish/vidmod.fish"
    man1.install Dir["#{libexec}/man/*.1"]
  end

  test do
    out = shell_output("#{bin}/vidmod -v")
    assert_match version.to_s, out
  end
end
