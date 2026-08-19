# vim: set ft=ruby :
class Vidmod < Formula
  desc "Video modification helpers."
  version "3.2.1"
  url "https://github.com/remino/remutils/releases/download/vidmod@3.2.1/vidmod@3.2.1.tar.gz"
  sha256 "cced807e0b94e3a8019c283275c542718c9d8430e333673b37591ad7043450ce"
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
