class Mkdigauth < Formula
	desc "Create digest auth .htdigest file for Apache HTTPd with related .htaccess file"
	homepage "https://github.com/remino/mkdigauth"
	url "https://api.github.com/repos/remino/mkdigauth/tarball/v1.1.1"
	sha256 "73d348678f6b616d1d4a1f9e7145563cd1e9b79f2a6b1e48fda2b754a80f6ad3"
	version "1.1.1"
	license "ISC"

	def install
		bin.install "./mkdigauth"
	end

	test do
		system "./mkdigauth", "-v"
	end
end
