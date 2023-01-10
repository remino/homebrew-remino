class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.5"
	sha256 "d77a7ac475288ad51efeb1932e479e13771c46267711dfe37f8547128b37036a"
	version "2.0.5"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
