class Mkdldir < Formula
	desc "Generate download directory for Apache HTTP Server"
	homepage "https://github.com/remino/mkdldir"
	url "https://api.github.com/repos/remino/mkdldir/tarball/v1.2.0"
	sha256 "f6a8e8c0f4e5bceb374fba50683f7e6044f5373b7b6928ff6a26223b8243e782"
	version "1.2.0"
	license "ISC"

	def install
		bin.install "./mkdldir"
	end

	test do
		system "./mkdldir", "-v"
	end
end