class Mkx < Formula
	desc "Make new shell script executable file from template"
	homepage "https://github.com/remino/mkx"
	url "https://api.github.com/repos/remino/mkx/tarball/v2.1.0"
	sha256 "16c1fa65d3232ad27f358b3c07ed11e0baae80b14e08161f8c2c52444513c6c3"
	version "2.1.0"
	license "ISC"

	def install
		bin.install "./mkx"
	end

	test do
		system "./mkx", "-v"
	end
end