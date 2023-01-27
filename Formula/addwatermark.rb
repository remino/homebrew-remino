class Addwatermark < Formula
	desc "Apply a watermark to an image file using ImageMagick"
	homepage "https://github.com/remino/addwatermark"
	url "https://api.github.com/repos/remino/addwatermark/tarball/v1.1.0"
	sha256 "83bf34e0a83aabe3cdfaabe8bf023b402d0b5f3ef96d8a9a17512e7a82d0c0c5"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./addwatermark"
	end

	test do
		system "./addwatermark", "-v"
	end
end
