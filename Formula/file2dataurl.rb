class File2dataurl < Formula
	desc "Convert file to base64 data URL"
	homepage "https://github.com/remino/file2dataurl"
	url "https://api.github.com/repos/remino/file2dataurl/tarball/v1.0.1"
	sha256 "4107b3fdb11173a652a57d3e4d06254aff06fc87e2a6580fc9c09c26bac2fc4c"
	version "1.0.1"
	license "ISC"

	def install
		bin.install "./file2dataurl"
	end

	test do
		system "./file2dataurl", "-v"
	end
end
