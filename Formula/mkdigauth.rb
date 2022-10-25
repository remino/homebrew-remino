class Mkdigauth < Formula
	desc "Create digest auth .htdigest file for Apache HTTPd with related .htaccess file"
	homepage "https://github.com/remino/mkdigauth"
	url "https://api.github.com/repos/remino/mkdigauth/tarball/v1.1.0"
	sha256 "bbdf05b3896b15fcb54c67e192621dfc03dde078db1802e26d5ffc924def75cd"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./mkdigauth"
	end

	test do
		system "./mkdigauth", "-v"
	end
end
