class Mkdldir < Formula
	desc "Generate download directory for Apache HTTP Server"
	homepage "https://github.com/remino/mkdldir"
	url "https://api.github.com/repos/remino/mkdldir/tarball/v1.3.0"
	sha256 "bbf8e09b789dbd4ef776093d149affee3dddbc3caa75e506b36cd60670c8834e"
	version "1.3.0"
	license "ISC"

	def install
		bin.install "./mkdldir"
	end

	test do
		system "./mkdldir", "-v"
	end
end