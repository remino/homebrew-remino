class Igframe < Formula
	desc "Fit an image into a specific ratio for Instagram"
	homepage "https://github.com/remino/igframe"
	url "https://api.github.com/repos/remino/igframe/tarball/v1.1.1"
	sha256 "64f141e1f8c433ceb06aa478db5b556d12480df97dde52b347eece776005ca00"
	version "1.1.1"
	license "ISC"

	def install
		bin.install "./igframe"
	end

	test do
		system "./igframe", "-v"
	end
end
