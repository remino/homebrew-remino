class Mkbrewrel < Formula
	desc "Create Brew release from GitHub release"
	homepage "https://github.com/remino/mkbrewrel"
	url "https://api.github.com/repos/remino/mkbrewrel/tarball/v1.1.4"
	sha256 "b23d22e59332f23de41f2ef8f5d392ebbf34540c155b293e5b055f5cb35637ee"
	version "1.1.4"
	license "ISC"

	def install
		bin.install "./mkbrewrel"
	end

	test do
		system "./mkbrewrel", "-v"
	end
end
