# vim: set ft=ruby :
class Vidmod < Formula
  desc "Video modification helpers."
  version "2.0.0"
  url "https://github.com/remino/remutils/releases/download/vidmod@2.0.0/vidmod@2.0.0.tar.gz"
  sha256 "6341fd9b40d172e678c1bde024056177242f554888381dc68f05ec0fa16bb685"
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
    man1.install Dir["man/*.1"]
  end

  test do
    out = shell_output("#{bin}/vidmod -v")
    assert_match version.to_s, out
  end
end
