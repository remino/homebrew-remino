class Mkwebalbum < Formula
	desc "Generate album Web page with previews from a directory of photos"
	homepage "https://github.com/remino/mkwebalbum"
	url "https://api.github.com/repos/remino/mkwebalbum/tarball/v1.3.0"
	sha256 "356acd10ef9724abcad95f49eb659800dc04074a3db16cc993a30642481df267"
	version "1.3.0"
	license "ISC"

	def install
		bin.install "./mkwebalbum"
	end

	test do
		system "./mkwebalbum", "-v"
	end
end
