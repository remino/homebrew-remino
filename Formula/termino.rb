# vim: set ft=ruby :
class Termino < Formula
  desc "Termino FIGlet font"
  homepage "https://github.com/remino/termino"
  url "https://github.com/remino/termino/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2692a01af866d2de226211ec0dc1c7155f6a6a65e4b79e80b066f9ab65ac07a7"
  revision 2
  license "ISC"

  depends_on "figlet"
  depends_on "python@3.14" => :optional

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    (share/"figlet").install "termino.flf", "termino-tabular.flf", "termino-mono.flf"
    if build.with? "python@3.14"
      libexec.install "bin/termino-clock"
      (bin/"termino-clock").write_env_script libexec/"termino-clock", PATH: "#{Formula['python@3.14'].opt_bin}:#{Formula['figlet'].opt_bin}:$PATH"
      man1.install "man/termino-clock.1"
    end
  end

  def caveats
    <<~EOS
      To use Termino:
        figlet -f termino "TERMINO"

      For equal-width, centered numerals:
        figlet -f termino-tabular "2026"

      For equal-width, centered characters:
        figlet -f termino-mono "TERMINO"
    EOS
  end

  test do
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino", "TERMINO"
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino-tabular", "2026"
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino-mono", "TERMINO"
    system Formula["figlet"].opt_bin/"figlet", "-f", "termino", "TERMINO"
    system Formula["figlet"].opt_bin/"figlet", "-f", "termino-tabular", "2026"
    system Formula["figlet"].opt_bin/"figlet", "-f", "termino-mono", "TERMINO"
    system bin/"termino-clock", "--time-only" if build.with? "python@3.14"
  end
end
