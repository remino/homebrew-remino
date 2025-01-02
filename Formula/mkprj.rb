class Mkprj < Formula
	desc "Create a dated project directory"
	homepage "https://github.com/remino/mkprj"
	url "https://api.github.com/repos/remino/mkprj/tarball/v1.2.0"
	sha256 "d77a2aac371967402818566d0f483b4f915d30bf683ba525650313fd476dc49b"
	version "1.2.0"
	license "ISC"

	def install
		bin.install "./mkprj"
	end

	test do
		system "./mkprj", "-v"
	end
end
