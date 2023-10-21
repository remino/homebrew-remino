class GitDup < Formula
	desc "Copy a local git repository from one location to another."
	homepage "https://github.com/remino/git-dup"
	url "https://api.github.com/repos/remino/git-dup/tarball/v1.1.0"
	sha256 "1a1156c83b8cc95abf2084877ca6b632ef6df0adf0bcc49c332cfd439c6c4cfa"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./git-dup"
	end

	test do
		system "./git-dup", "-v"
	end
end
