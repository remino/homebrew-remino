class Mvln < Formula
	desc "Move source files and directories to target and leave symlinks their place"
	homepage "https://github.com/remino/mvln"
	url "https://api.github.com/repos/remino/mvln/tarball/v1.0.0"
	sha256 "eb8431521ce6e967908ce57515e92bdd19885925f07de58b92ed4e082066f6f4"
	version "1.0.0"
	license "ISC"

	depends_on "coreutils"

	def install
		bin.install "./mvln"
	end

	test do
		system "./mvln", "-v"
	end
end
