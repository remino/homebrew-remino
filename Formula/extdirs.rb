class Extdirs < Formula
  desc "Move files into separate directories named by their extensions"
  homepage "https://github.com/remino/extdirs"
  url "https://api.github.com/repos/remino/extdirs/zipball/v1.0.0"
  version "1.0.0"
  sha256 "2ee54139a213dd5edafba43d74624740cf00d749c86bf10a2e69de210d826003"
  license "MIT"

  def install
    bin.install "./extdirs"
  end

  test do
    system "./extdirs", "-v"
  end
end
