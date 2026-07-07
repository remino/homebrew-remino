# vim: set ft=ruby :
class Vidmod < Formula
  desc "Video modification helpers."
  version "2.4.0_1"
  url "https://github.com/remino/remutils/releases/download/vidmod@2.4.0/vidmod@2.4.0.tar.gz"
  sha256 "64d422ab68b9a7d250ec3e6973356ca4f1d8c1143248b92be2028c8dc094b1a6"
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
