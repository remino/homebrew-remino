# vim: set ft=ruby :
class Termino < Formula
  desc "Termino FIGlet font"
  homepage "https://github.com/remino/termino"
  url "https://github.com/remino/termino/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4e49eb8ebf88cd4dc4cad74bc4246e0b80ed5b2259c4af97d81d187b67fa7bf8"
  license "ISC"

  depends_on "figlet"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    (share/"figlet").install "termino.flf", "termino-raster.flf", "termino-tabular.flf", "termino-mono.flf"
  end

  def caveats
    <<~EOS
      To use Termino:
        figlet -d #{opt_share}/figlet -f termino "TERMINO"

      For the original # raster:
        figlet -d #{opt_share}/figlet -f termino-raster "TERMINO"

      For equal-width, centered numerals:
        figlet -d #{opt_share}/figlet -f termino-tabular "2026"

      For equal-width, centered characters:
        figlet -d #{opt_share}/figlet -f termino-mono "TERMINO"
    EOS
  end

  test do
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino", "TERMINO"
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino-raster", "TERMINO"
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino-tabular", "2026"
    system Formula["figlet"].opt_bin/"figlet", "-d", share/"figlet", "-f", "termino-mono", "TERMINO"
  end
end
