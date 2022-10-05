class Podsite < Formula
	desc "Container directory of pods to unify as a single site"
	homepage "https://github.com/remino/podsite"
	url "https://api.github.com/repos/remino/podsite/tarball/v1.0.4"
	sha256 "eaeaf6645c9ccaf2222f234cdde7754158cebadc767fbaf35c3a010890a20ecf"
	version "1.0.4"
	license "ISC"

	def install
		bin.install "./podsite"
	end

	test do
		system "./podsite", "-v"
	end
end
