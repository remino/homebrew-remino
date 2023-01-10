class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.3"
	sha256 "a871bea86d906bff20427d7f5542b51a378393e69f75633321d693f2751145e5"
	version "2.0.3"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
