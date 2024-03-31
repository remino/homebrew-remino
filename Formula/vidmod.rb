class Vidmod < Formula
	desc "Do rapid changes to video files using ffmpeg or other tools"
	homepage "https://github.com/remino/vidmod"
	url "https://api.github.com/repos/remino/vidmod/tarball/v1.2.0"
	sha256 "063e046e1a901af46c5f7ef42deba3f2818a4a594765aa88f4f85fcd70f4ebfb"
	version "1.2.0"
	license "ISC"

	depends_on "ffmpeg"

	def install
		bin.install "./vidmod"
	end

	test do
		system "./vidmod", "-v"
	end
end
