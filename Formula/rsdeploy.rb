class Rsdeploy < Formula
	desc ""
	homepage "https://github.com/remino/rsdeploy"
	url "https://api.github.com/repos/remino/rsdeploy/tarball/v1.1.0"
	sha256 "030277cb7e215f8a74365d5a1af3d23566d31842075d652ba441834c0afacf51"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./rsdeploy"
	end

	test do
		system "./rsdeploy", "-v"
	end
end
