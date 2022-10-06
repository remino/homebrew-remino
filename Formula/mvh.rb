class Mvh < Formula
	desc "Move files and directories to current directory using mv"
	homepage "https://github.com/remino/mvh"
	url "https://api.github.com/repos/remino/mvh/tarball/v1.0.0"
	sha256 "3add4cca8172484f044d86fa15df7681d0ac0b190a8f6eaf44ffa25bfb19b4e3"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./mvh"
	end

	test do
		system "./mvh", "-v"
	end
end
