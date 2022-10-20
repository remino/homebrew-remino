class Getup < Formula
	desc "Get up and run some things"
	homepage "https://github.com/remino/getup"
	url "https://api.github.com/repos/remino/getup/tarball/v1.0.1"
	sha256 "30218f7c1192908211af81f7a08735b3a2137a20c3b406e301775b0e67c8e60b"
	version "1.0.1"
	license "ISC"

	def install
		bin.install "./getup"
	end

	test do
		system "./getup", "-v"
	end
end
