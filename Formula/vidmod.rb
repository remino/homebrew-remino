# vim: set ft=ruby :
class Vidmod < Formula
  desc "Video modification helpers."
  version "2.4.2"
  url "https://github.com/remino/remutils/releases/download/vidmod@2.4.2/vidmod@2.4.2.tar.gz"
  sha256 "322bb8d706af3d95c9162b337f92919c0395d041dbb32b89814d494914d7d613"
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
