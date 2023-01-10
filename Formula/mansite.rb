class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.6"
	sha256 "7bb505f831907fb1f7da86d09583c98201d7a4cd8f1024e21f57c9a4e6e7811f"
	version "2.0.6"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
