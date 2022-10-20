class Getup < Formula
	desc "Get up and run some things"
	homepage "https://github.com/remino/getup"
	url "https://api.github.com/repos/remino/getup/tarball/v1.1.0"
	sha256 "0552e9a386df6d421a308d0742ec4a870ee7c490afe9483cb694e128c7b6b6c1"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./getup"
	end

	test do
		system "./getup", "-v"
	end
end
