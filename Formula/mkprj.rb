class Mkprj < Formula
	desc "Create a dated project directory"
	homepage "https://github.com/remino/mkprj"
	url "https://api.github.com/repos/remino/mkprj/tarball/v1.0.0"
	sha256 "95180e099c209982087dd8136054af66b6bd1480ac04312fc877a642e728ab66"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./mkprj"
	end

	test do
		system "./mkprj", "-v"
	end
end
