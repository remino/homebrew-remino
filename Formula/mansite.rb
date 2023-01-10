class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.0"
	sha256 "619c5ef75015e4afb151e521daad01394e5ae9788f3bde06e2a3f0b7d48db029"
	version "2.0.0"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
