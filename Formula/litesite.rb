# vim: set ft=ruby :
class Litesite < Formula
  desc "Create and work with tiny static sites."
  version "2.2.1"
  url "https://github.com/remino/remutils/releases/download/litesite@2.2.1/litesite@2.2.1.tar.gz"
  sha256 "19aea04315d8c7e6427ec7fba6ecd11b2e341e212835362411791fd3a9202a91"
  license "ISC"
  homepage "https://github.com/remino/remutils/tree/main/litesite"
  revision 2

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
