class Randgen < Formula
	desc ""
	homepage "https://github.com/remino/randgen"
	url "https://api.github.com/repos/remino/randgen/tarball/v1.0.0"
	sha256 "74d39f2602455c4aa0663c42214fa98129b7b6a2c150483af73deba5846e2894"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./randgen"
	end

	test do
		system "./randgen", "-v"
	end
end
