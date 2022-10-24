class Mkadindex < Formula
	desc "Create .htaccess file for Apache HTTPd to show a stylised directory index"
	homepage "https://github.com/remino/mkadindex"
	url "https://api.github.com/repos/remino/mkadindex/tarball/v1.0.0"
	sha256 "80e50b60ab3e6ebf2286f8f3153da4058d4d0f9b6296af9095ab0727a860d0be"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./mkadindex"
	end

	test do
		system "./mkadindex", "-v"
	end
end
