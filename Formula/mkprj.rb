class Mkprj < Formula
	desc "Create a dated project directory"
	homepage "https://github.com/remino/mkprj"
	url "https://api.github.com/repos/remino/mkprj/tarball/v2.1.0"
	sha256 "466d6b8895121e8bf28a5fb46dd367b604403d272e7e42acd5c25f3b8c6143a7"
	version "2.1.0"
	license "ISC"

	def install
		bin.install "./mkprj"
	end

	test do
		system "./mkprj", "-v"
	end
end
