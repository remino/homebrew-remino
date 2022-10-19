class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v1.0.0"
	sha256 "5cae4f03ec6d1994ccccb6e1686ff171fc6868ff58b569a2a5f7c9c4c173b67e"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
