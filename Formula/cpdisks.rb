class Cpdisks < Formula
	desc "Copy several disks one by one in a single directory"
	homepage "https://github.com/remino/cpdisks"
	url "https://api.github.com/repos/remino/cpdisks/tarball/v1.0.1"
	sha256 "ec8e523c88a6a12c3f30e8556183cebfb846aa8f3e14d147e55a8c9f9aa585d0"
	version "1.0.1"
	license "ISC"

	def install
		bin.install "./cpdisks"
	end

	test do
		system "./cpdisks", "-v"
	end
end
