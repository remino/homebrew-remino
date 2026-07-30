# vim: set ft=ruby :
class Vid2gif < Formula
  desc "Convert video files into animated GIFs."
  version "2.0.0"
  url "https://github.com/remino/remutils/releases/download/vid2gif@2.0.0/vid2gif@2.0.0.tar.gz"
  sha256 "488e30ad4c5fcdf4efaa5aa3afb687cc875f82c691e8058d48e19ad13a91a125"
  license "ISC"
  homepage "https://github.com/remino/remutils"

  depends_on "bash"
  depends_on "ffmpeg"
  depends_on "imagemagick"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install "vid2gif"
    bin.install_symlink libexec / "vid2gif" => "vid2gif"
    bin.install_symlink libexec / "vid2gif" => "movie2gif"
    man1.install "man/vid2gif.1"
  end

  test do
    out = shell_output("#{bin}/vid2gif -v")
    assert_match version.to_s, out
    assert_predicate bin / "movie2gif", :symlink?
  end
end
