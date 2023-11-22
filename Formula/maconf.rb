class Maconf < Formula
	desc "Get and set various settings in macOS"
	homepage "https://github.com/remino/maconf"
	url "https://api.github.com/repos/remino/maconf/tarball/v1.1.1"
	sha256 "c0c0a708764ca93cd3f88064b2692dd39f6606b2408aada1019f49e450003c1b"
	version "1.1.1"
	license "ISC"

	def install
		bin.install "./maconf"
	end

	test do
		system "./maconf", "-v"
	end
end
