class Hashtagalog < Formula
  desc "Library of hashtag helpers"
  homepage "https://github.com/remino/hashtagalog"
  url "https://api.github.com/repos/remino/hashtagalog/zipball/v0.1.0"
  version "1.0.0"
  sha256 "66af9c047daf3c5370a436ff04f2fcac9fb0c44ba39567f9e2429e628fd5c7a8"
  license "ISC"

  def install
    bin.install "./hashtagalog"
  end

  test do
    assert_equal "#a #b", shell_output("./hashtagalog -f '#b a'").strip
  end
end
