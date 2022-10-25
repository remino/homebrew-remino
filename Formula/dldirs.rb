class Dldirs < Formula
	desc "Manage download directories"
	homepage "https://github.com/remino/dldirs"
	url "https://api.github.com/repos/remino/dldirs/tarball/v1.1.0"
	sha256 "827e98db61b23b518de221ee6dccc6d604b2d0c68f73dd7a72e098b7a443c09a"
	version "1.1.0"
	license "ISC"

	def install
		bin.install "./dldirs"
	end

	test do
		system "./dldirs", "-v"
	end
end
