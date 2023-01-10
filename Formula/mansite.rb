class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.4"
	sha256 "37a6db99092d34a335a70bf558f05203c02232f45ef8c779cf57b019db53a085"
	version "2.0.4"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
