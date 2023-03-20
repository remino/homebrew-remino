class Serename < Formula
	desc "Rename files and directories using regular expressions via sed."
	homepage "https://github.com/remino/serename"
	url "https://api.github.com/repos/remino/serename/tarball/v1.0.0"
	sha256 "ca4173495bddabb90fe3d3a192eadd48b780cc53cd4d2bd4d1389617aec41faa"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./serename"
	end

	test do
		system "./serename", "-v"
	end
end
