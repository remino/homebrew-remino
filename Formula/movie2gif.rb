class Movie2gif < Formula
	desc "Convert video file into GIF or get info about the file"
	homepage "https://github.com/remino/movie2gif"
	url "https://api.github.com/repos/remino/movie2gif/tarball/v1.0.1"
	sha256 "08c094b244a88e2ba13d4895381fb6c21a357cb1e32af636d74670a16a496412"
	version "1.0.1"
	license "ISC"

	def install
		bin.install "./movie2gif"
	end

	test do
		system "./movie2gif", "-v"
	end
end
