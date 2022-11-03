class Getup < Formula
	desc "Get up and run some things"
	homepage "https://github.com/remino/getup"
	url "https://api.github.com/repos/remino/getup/tarball/v1.2.0"
	sha256 "c00318911cb2a93e8b651481996f79e2de4c0f843eb52434d212abbb8272ac19"
	version "1.2.0"
	license "ISC"

	def install
		bin.install "./getup"
	end

	test do
		system "./getup", "-v"
	end
end
