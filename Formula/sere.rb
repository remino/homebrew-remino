class Sere < Formula
	desc "Search and replace"
	homepage "https://github.com/remino/sere"
	url "https://api.github.com/repos/remino/sere/tarball/v2.0.0"
	sha256 "1f8b144ea1fd28842e2e70484653e0498758697a4151f1dc2267d4c7423327af"
	version "2.0.0"
	license "ISC"

	def install
		bin.install "./sere"
	end

	test do
		system "./sere", "-v"
	end
end
