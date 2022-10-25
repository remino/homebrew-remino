class Mkwebalbum < Formula
	desc "Generate album Web page with previews from a directory of photos"
	homepage "https://github.com/remino/mkwebalbum"
	url "https://api.github.com/repos/remino/mkwebalbum/tarball/v1.0.1"
	sha256 "361bf696a8095ad65b473dc6d9a316de9846589031e2e7af54fe1704942517c0"
	version "1.0.1"
	license "ISC"

	def install
		bin.install "./mkwebalbum"
	end

	test do
		system "./mkwebalbum", "-v"
	end
end
