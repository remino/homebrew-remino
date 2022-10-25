class Dldirs < Formula
	desc "Manage download directories"
	homepage "https://github.com/remino/dldirs"
	url "https://api.github.com/repos/remino/dldirs/tarball/v1.0.0"
	sha256 "21174d98c5174d9398823b5cdf584306a37ce3630d2b0dbc7f8789ea6bf6a41b"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./dldirs"
	end

	test do
		system "./dldirs", "-v"
	end
end
