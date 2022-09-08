class Igframe < Formula
  desc "Fit image into a square frame fit for Instagram"
  homepage "https://github.com/remino/igframe"
  url "https://api.github.com/repos/remino/igframe/zipball/v1.0.0"
  version "1.0.0"
  sha256 "f65ddfdf5c93158eea88e27df8b214ed68dff1f7ba9e94c664dcc12f6edc4a1d"
  license "MIT"

  def install
    bin.install "./igframe"
  end

  test do
    system "./igframe", "-v"
  end
end
