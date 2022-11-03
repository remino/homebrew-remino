class Getup < Formula
	desc "Get up and run some things"
	homepage "https://github.com/remino/getup"
	url "https://api.github.com/repos/remino/getup/tarball/v1.2.1"
	sha256 "679a07c3fb7136675ada0968ca20998c33a37957e1ae8ef22893bcf0d7f01af9"
	version "1.2.1"
	license "ISC"

	def install
		bin.install "./getup"
	end

	test do
		system "./getup", "-v"
	end
end
