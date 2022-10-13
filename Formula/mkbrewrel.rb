class Mkbrewrel < Formula
	desc "Create Brew release from GitHub release"
	homepage "https://github.com/remino/mkbrewrel"
	url "https://api.github.com/repos/remino/mkbrewrel/tarball/v1.1.3"
	sha256 "bf271f52e4bc03a9d9099e591fb9ac43a029514813348f1b657e5d529aa093b7"
	version "1.1.3"
	license "ISC"

	def install
		bin.install "./mkbrewrel"
	end

	test do
		system "./mkbrewrel", "-v"
	end
end