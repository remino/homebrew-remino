class Dldirs < Formula
	desc "Manage download directories"
	homepage "https://github.com/remino/dldirs"
	url "https://api.github.com/repos/remino/dldirs/tarball/v1.1.2"
	sha256 "f465aa724055cb13de3f097c2a87ea1ca5fc7164f19256acd356a4f10ebe4450"
	version "1.1.2"
	license "ISC"

	def install
		bin.install "./dldirs"
	end

	test do
		system "./dldirs", "-v"
	end
end
