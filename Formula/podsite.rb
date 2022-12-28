class Podsite < Formula
	desc "Container directory of pods to unify as a single site"
	homepage "https://github.com/remino/podsite"
	url "https://api.github.com/repos/remino/podsite/tarball/v1.1.2"
	sha256 "2a797c18d6760d9bbdf38fbb698dd3e61c8ffa087ce5d5fa93983230bec9db25"
	version "1.1.2"
	license "ISC"

	depends_on "unidir"

	def install
		bin.install "./podsite"
	end

	test do
		system "./podsite", "-v"
	end
end
