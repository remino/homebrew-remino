class File2dataurl < Formula
	desc "Convert file to base64 data URL"
	homepage "https://github.com/remino/file2dataurl"
	url "https://api.github.com/repos/remino/file2dataurl/tarball/v1.0.0"
	sha256 "711a0139536fe2341ce03b0f8edcafb316c4b570709c733a386fa36c6e72dc34"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./file2dataurl"
	end

	test do
		system "./file2dataurl", "-v"
	end
end
