class Sere < Formula
	desc "Search and replace"
	homepage "https://github.com/remino/sere"
	url "https://api.github.com/repos/remino/sere/tarball/v2.0.1"
	sha256 "50a05f3c48e433e03e4bb0b68f5fd633167ade684e040113664adcf690ad5e3a"
	version "2.0.1"
	license "ISC"

	def install
		bin.install "./sere"
	end

	test do
		system "./sere", "-v"
	end
end
