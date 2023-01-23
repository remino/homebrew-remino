class Addwatermark < Formula
	desc "Apply a watermark to an image file using ImageMagick"
	homepage "https://github.com/remino/addwatermark"
	url "https://api.github.com/repos/remino/addwatermark/tarball/v1.0.0"
	sha256 "efd6e81b40a12d8f137f0a8bbedf156e74d8c43b58fe161b965271539e64c9cf"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./addwatermark"
	end

	test do
		system "./addwatermark", "-v"
	end
end
