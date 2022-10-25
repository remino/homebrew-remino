class Dldirs < Formula
	desc "Manage download directories"
	homepage "https://github.com/remino/dldirs"
	url "https://api.github.com/repos/remino/dldirs/tarball/v1.1.1"
	sha256 "d7b52243c58f1ae3222f9b11e110934f2925967d36aecc0205ed89c4846b6045"
	version "1.1.1"
	license "ISC"

	def install
		bin.install "./dldirs"
	end

	test do
		system "./dldirs", "-v"
	end
end
