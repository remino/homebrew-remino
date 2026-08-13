# vim: set ft=ruby :
class Osc52 < Formula
  desc "Copy and paste using terminal OSC 52 clipboard sequences"
  version "0.1.0"
  url "https://github.com/remino/remutils/releases/download/osc52@0.1.0/osc52@0.1.0.tar.gz"
  sha256 "e6396b0cb1e8dbbb458e050af98531de5659607e847e15a32b7b61723f77a9ed"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/osc52"

  depends_on "bash"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "osc52"
    bin.install_symlink "osc52" => "osc52copy"
    bin.install_symlink "osc52" => "osc52paste"
    man1.install "man/osc52.1", "man/osc52copy.1", "man/osc52paste.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/osc52copy --version")
  end
end
