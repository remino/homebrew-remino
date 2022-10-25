class Mkwebalbum < Formula
	desc "Generate album Web page with previews from a directory of photos"
	homepage "https://github.com/remino/mkwebalbum"
	url "https://api.github.com/repos/remino/mkwebalbum/tarball/v1.2.0"
	sha256 "2af0fe5e3f0fde7162dc8e1f6c51cd490ce262da0b502db6d70548823ada7455"
	version "1.2.0"
	license "ISC"

	def install
		bin.install "./mkwebalbum"
	end

	test do
		system "./mkwebalbum", "-v"
	end
end
