class Cpdisks < Formula
	desc "Copy several disks one by one in a single directory"
	homepage "https://github.com/remino/cpdisks"
	url "https://api.github.com/repos/remino/cpdisks/tarball/v1.0.0"
	sha256 "9d5ea5b625ca434acb4f5a1eadc7a8e72aecb05dbe7a4f7b3330d2ad1242baa9"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./cpdisks"
	end

	test do
		system "./cpdisks", "-v"
	end
end
