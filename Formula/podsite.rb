class Podsite < Formula
	desc "Container directory of pods to unify as a single site"
	homepage "https://github.com/remino/podsite"
	url "https://api.github.com/repos/remino/podsite/tarball/v1.2.0"
	sha256 "624e6a7db3008008db9d43a67c597e566717747519c3d7ec75e31bb79f7d1bfd"
	version "1.2.0"
	license "ISC"

	depends_on "unidir"

	def install
		bin.install "./podsite"
	end

	test do
		system "./podsite", "-v"
	end
end
