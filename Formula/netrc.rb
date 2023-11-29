class Netrc < Formula
	desc "Output account credentials from a .netrc file."
	homepage "https://github.com/remino/netrc"
	url "https://api.github.com/repos/remino/netrc/tarball/v1.0.0"
	sha256 "fbb7582312d5546d77e748332fb516435c781cb32b5777f5184586c282ce3dbc"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./netrc"
	end

	test do
		system "./netrc", "-v"
	end
end
