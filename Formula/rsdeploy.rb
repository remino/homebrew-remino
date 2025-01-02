class Rsdeploy < Formula
	desc ""
	homepage "https://github.com/remino/rsdeploy"
	url "https://api.github.com/repos/remino/rsdeploy/tarball/v1.0.0"
	sha256 "a2a4155ade1892039e6f27e4ef7e36cbc41cb5d15884c9d1cf82e1cc019804d9"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./rsdeploy"
	end

	test do
		system "./rsdeploy", "-v"
	end
end
