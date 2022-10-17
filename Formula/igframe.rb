class Igframe < Formula
	desc "Fit an image into a specific ratio for Instagram"
	homepage "https://github.com/remino/igframe"
	url "https://api.github.com/repos/remino/igframe/tarball/v1.1.2"
	sha256 "1db017b4897a937a49edc963fd1f7c15cbba0d69ae2f550e805a8a39aa86235e"
	version "1.1.2"
	license "ISC"

	def install
		bin.install "./igframe"
	end

	test do
		system "./igframe", "-v"
	end
end
