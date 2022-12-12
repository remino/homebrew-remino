class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v1.1.0"
	sha256 "d1c94d68ac085e87ebb9ff50b9cddb9415f9b6148f283b644c846212b4dfcbdc"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
