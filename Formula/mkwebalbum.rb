class Mkwebalbum < Formula
	desc "Generate album Web page with previews from a directory of photos"
	homepage "https://github.com/remino/mkwebalbum"
	url "https://api.github.com/repos/remino/mkwebalbum/tarball/v1.0.0"
	sha256 "81483bafcb35057e3880a8001945f8ea80f23d2ddcdedbad6564153c47432359"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./mkwebalbum"
	end

	test do
		system "./mkwebalbum", "-v"
	end
end
