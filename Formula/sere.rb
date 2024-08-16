class Sere < Formula
	desc "Search and replace"
	homepage "https://github.com/remino/sere"
	url "https://api.github.com/repos/remino/sere/tarball/v2.2.0"
	sha256 "894b39783d8273fe685f8a01497d158c3daf05b7ff3c53ae1fcc085e934393c1"
	version "2.2.0"
	license "ISC"

	def install
		bin.install "./sere"
	end

	test do
		system "./sere", "-v"
	end
end
