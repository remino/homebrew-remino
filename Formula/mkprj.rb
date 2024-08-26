class Mkprj < Formula
	desc "Create a dated project directory"
	homepage "https://github.com/remino/mkprj"
	url "https://api.github.com/repos/remino/mkprj/tarball/v1.0.1"
	sha256 "88feef82d9fe440f248137fdc7e9d0f96a28a7f1ac39cd8faa41d8199f8c8b90"
	version "1.0.1"
	license "ISC"

	def install
		bin.install "./mkprj"
	end

	test do
		system "./mkprj", "-v"
	end
end
