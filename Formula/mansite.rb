class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.1"
	sha256 "f956cc078bf7b202f8db132eb132d48b51072367462e58aa514a32c7d9ae84f5"
	version "2.0.1"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
