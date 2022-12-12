class Jeksite < Formula
	desc "Plain and simple Jekyll site template ideal for GitHub Pages"
	homepage "https://github.com/remino/jeksite"
	url "https://api.github.com/repos/remino/jeksite/tarball/v1.1.1"
	sha256 "8fac3c383dfc5e5d10ba853b43f884576a0f7bdb36be1b2be3b7d329da45b5d7"
	version "1.1.1"
	license "ISC"

	def install
		bin.install "./jeksite"
	end

	test do
		system "./jeksite", "-v"
	end
end
