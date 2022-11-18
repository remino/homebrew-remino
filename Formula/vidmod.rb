class Vidmod < Formula
	desc "Do rapid changes to video files using ffmpeg or other tools"
	homepage "https://github.com/remino/vidmod"
	url "https://api.github.com/repos/remino/vidmod/tarball/v1.1.0"
	sha256 "1c8c1dad3cb057e87c75f2a14b57e7e755bb7aa08a524901cb527e3beea23a93"
	version "1.1.0"
	license "ISC"

	depends_on "ffmpeg"

	def install
		bin.install "./vidmod"
	end

	test do
		system "./vidmod", "-v"
	end
end
