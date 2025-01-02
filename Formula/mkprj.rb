class Mkprj < Formula
	desc "Create a dated project directory"
	homepage "https://github.com/remino/mkprj"
	url "https://api.github.com/repos/remino/mkprj/tarball/v1.1.0"
	sha256 "9270f0be20624406b44e27005ffac264034e3d11f80d6e53e2d5c0a2c0d9ca9e"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./mkprj"
	end

	test do
		system "./mkprj", "-v"
	end
end
