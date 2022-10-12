class Podsite < Formula
	desc "Container directory of pods to unify as a single site"
	homepage "https://github.com/remino/podsite"
	url "https://api.github.com/repos/remino/podsite/tarball/v1.1.1"
	sha256 "16c6728ce353736714a857ee4e5dea37a4e8b29995f1ab5c60022f5a5ffa6f09"
	version "1.1.1"
	license "ISC"

	def install
		bin.install "./podsite"
	end

	test do
		system "./podsite", "-v"
	end
end