# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "2.3.0"
  url "https://github.com/remino/remutils/releases/download/litesite@2.3.0/litesite@2.3.0.tar.gz"
  sha256 "d34c9603d0b8184d497545a4a980f45643953c3c2610542892ce3fecf70b0c45"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/litesite"
  revision 1

  depends_on "rust" => :build
  depends_on "imagemagick"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    system "cargo", "install", *std_cargo_args(root: libexec, path: ".")
    libexec.install "templates"

    (bin / "litesite").write_env_script libexec / "bin/litesite",
                                        LITESITE_TEMPLATE_DIR: libexec / "templates"
    man1.install "man/litesite.1"
  end

  test do
    out = shell_output("#{bin}/litesite -v")
    assert_match version.to_s, out

    system bin / "litesite", "new", "example", testpath / "example"
    assert_predicate testpath / "example/src/public/index.html", :exist?
  end
end
