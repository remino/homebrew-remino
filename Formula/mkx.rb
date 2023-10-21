class Mkx < Formula
	desc "Make new shell script executable file from template"
	homepage "https://github.com/remino/mkx"
	url "https://api.github.com/repos/remino/mkx/tarball/v2.3.0"
	sha256 "bb4e18f47202f9eafa51e8ff07fd87a8da7d5ea1653b148efc044600ca5d6ae3"
	version "2.3.0"
	license "ISC"

	def install
		bin.install "./mkx"
	end

	test do
		system "./mkx", "-v"
	end
end
