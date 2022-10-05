class Mkbrewrel < Formula
	desc "Create Brew release from GitHub release"
	homepage "https://github.com/remino/mkbrewrel"
	url "https://api.github.com/repos/remino/mkbrewrel/tarball/v1.1.0"
	sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./mkbrewrel"
	end

	test do
		system "./mkbrewrel", "-v"
	end
end