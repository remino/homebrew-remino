class Gemdocs < Formula
	desc ""
	homepage "https://github.com/remino/gemdocs"
	url "https://api.github.com/repos/remino/gemdocs/tarball/v1.0.0"
	sha256 "c8fe7888903b6bffabb4cf602054750131fa889e8599355b6545fc155a0ceed6"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./gemdocs"
	end

	test do
		system "./gemdocs", "-v"
	end
end
