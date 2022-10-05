class Mkbrewrel < Formula
	desc "Create Brew release from GitHub release"
	homepage "https://github.com/remino/mkbrewrel"
	url "https://api.github.com/repos/remino/mkbrewrel/tarball/v1.1.2"
	sha256 "8cbd31bffdf2794b1b63cd70619fcbd3c4696b72fb02e6f5babe752a05f467aa"
	version "1.1.2"
	license "ISC"

	def install
		bin.install "./mkbrewrel"
	end

	test do
		system "./mkbrewrel", "-v"
	end
end