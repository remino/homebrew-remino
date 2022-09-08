class Mkx < Formula
  desc "Make new shell script executable file from template"
  homepage "https://github.com/remino/mkx"
  url "https://github.com/remino/mkx/archive/refs/tags/v2.0.0.tar.gz"
  version "2.0.0"
  sha256 "5c7fe2c5002ffaaf3460083d20667a6b18bf2844eb068da00c4f16c7dadb7db7"
  license "MIT"

  def install
    bin.install "mkx"
  end

  test do
    system "mkx", "-v"
  end
end
