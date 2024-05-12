class Sere < Formula
	desc "Search and replace"
	homepage "https://github.com/remino/sere"
	url "https://api.github.com/repos/remino/sere/tarball/v2.1.0"
	sha256 "05f2551d68cbacf2b0ef7699c2d6b0bdf285488b9e9aa081710133b115de81d9"
	version "2.1.0"
	license "ISC"

	def install
		bin.install "./sere"
	end

	test do
		system "./sere", "-v"
	end
end
