class Podsite < Formula
	desc "Container directory of pods to unify as a single site"
	homepage "https://github.com/remino/podsite"
	url "https://api.github.com/repos/remino/podsite/tarball/v1.1.0"
	sha256 "9dd35a89f4e51553b52f2153ffbfc10046446fd58c2a9261753ab86df4e807ea"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./podsite"
	end

	test do
		system "./podsite", "-v"
	end
end