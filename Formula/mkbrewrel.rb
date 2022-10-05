class Mkbrewrel < Formula
	desc "Create Brew release from GitHub release"
	homepage "https://github.com/remino/mkbrewrel"
	url "https://api.github.com/repos/remino/mkbrewrel/tarball/v1.1.1"
	sha256 "a48068b76c2fed1f00bee87da954321a61a87a60d4b167fd2664a8efab76f40f"
	version "1.1.1"
	license "ISC"

	def install
		bin.install "./mkbrewrel"
	end

	test do
		system "./mkbrewrel", "-v"
	end
end