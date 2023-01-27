class Addwatermark < Formula
	desc "Apply a watermark to an image file using ImageMagick"
	homepage "https://github.com/remino/addwatermark"
	url "https://api.github.com/repos/remino/addwatermark/tarball/v2.0.0"
	sha256 "77337427e701abff0c5002ef84637be66145fbd7f6eb62fec823f72a115d6b76"
	version "2.0.0"
	license "ISC"

	def install
		bin.install "./addwatermark"
	end

	test do
		system "./addwatermark", "-v"
	end
end
