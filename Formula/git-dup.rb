class GitDup < Formula
	desc "Copy a local git repository from one location to another."
	homepage "https://github.com/remino/git-dup"
	url "https://api.github.com/repos/remino/git-dup/tarball/v1.0.0"
	sha256 "30a8330bcd2f3cd064975923e5125977530e1390820408d5dd9cff83f5e35121"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./git-dup"
	end

	test do
		system "./git-dup", "-v"
	end
end
