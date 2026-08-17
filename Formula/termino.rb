# vim: set ft=ruby :
class Termino < Formula
  desc "Termino FIGlet font"
  homepage "https://github.com/remino/termino"
  url "https://github.com/remino/termino/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2692a01af866d2de226211ec0dc1c7155f6a6a65e4b79e80b066f9ab65ac07a7"
  license "ISC"

  depends_on "figlet"
  depends_on "python@3.14"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    (share/"figlet").install "termino.flf", "termino-tabular.flf", "termino-mono.flf"
    libexec.install "bin/termino-clock"
    bin.env_script_all_files libexec, PATH: Formula["python@3.14"].opt_bin
    man1.install "man/termino-clock.1"
  end

  def caveats
    <<~EOS
      To use Termino:
        figlet -d #{opt_share}/figlet -f termino "TERMINO"

      For equal-width, centered numerals:
        figlet -d #{opt_share}/figlet -f termino-tabular "2026"

      For equal-width, centered characters:
        figlet -d #{opt_share}/figlet -f termino-mono "TERMINO"
    EOS
  end

  test do
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino", "TERMINO"
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino-tabular", "2026"
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino-mono", "TERMINO"
    system bin/"termino-clock"
  end
end
