class Mkx < Formula
	desc "Make new shell script executable file from template"
	homepage "https://github.com/remino/mkx"
	url "https://api.github.com/repos/remino/mkx/tarball/v2.1.1"
	sha256 "407885d8c55d9ea5ef81f533d3078b1c897bb092cfab4c41d4c7c51edaf805b0"
	version "2.1.1"
	license "ISC"

	def install
		bin.install "./mkx"
	end

	test do
		system "./mkx", "-v"
	end
end
