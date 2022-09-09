class Hashtagalong < Formula
  desc "Library of hashtag helpers"
  homepage "https://github.com/remino/hashtagalong"
  url "https://api.github.com/repos/remino/hashtagalong/zipball/v0.1.0"
  version "1.0.0"
  sha256 "2ab28347d2238fe814841444734936d351c27a51ce5a6e31c4dbd9619c362b44"
  license "ISC"

  def install
    bin.install "./hashtagalong"
  end

  test do
    assert_equal "#a #b", shell_output("./hashtagalong -f '#b a'").strip
  end
end
