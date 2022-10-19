class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v1.0.1"
	sha256 "af84227f0231be6b8bfb87b618ceee87df249ae46870c25641e1c9ec91ddab15"
	version "1.0.1"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
