class Mkdigauth < Formula
	desc "Create digest auth .htdigest file for Apache HTTPd with related .htaccess file"
	homepage "https://github.com/remino/mkdigauth"
	url "https://api.github.com/repos/remino/mkdigauth/tarball/v1.0.0"
	sha256 "86549e195d49b1b91bd10664634a0a7e9ea639b539ea74b7a8f5b8dd7f127adb"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./mkdigauth"
	end

	test do
		system "./mkdigauth", "-v"
	end
end
