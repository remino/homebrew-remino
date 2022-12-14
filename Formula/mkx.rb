class Mkx < Formula
	desc "Make new shell script executable file from template"
	homepage "https://github.com/remino/mkx"
	url "https://api.github.com/repos/remino/mkx/tarball/v2.2.0"
	sha256 "723a420422e099a7905c7c2ea391454c61f1eb81b4ceeb879ba0e2eb8149a14a"
	version "2.2.0"
	license "ISC"

	def install
		bin.install "./mkx"
	end

	test do
		system "./mkx", "-v"
	end
end
