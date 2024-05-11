class Rmnlogo < Formula
	desc "Outputs the RÉMINO logo in ASCII art and ANSI colours."
	homepage "https://github.com/remino/rmnlogo"
	url "https://api.github.com/repos/remino/rmnlogo/tarball/v1.0.0"
	sha256 "f841577716c7a357f7784a0835ef0fd31298f138d9067e21b012f1453706d3b6"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./rmnlogo"
	end

	test do
		system "./rmnlogo", "-v"
	end
end
