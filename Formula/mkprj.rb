class Mkprj < Formula
	desc "Create a dated project directory"
	homepage "https://github.com/remino/mkprj"
	url "https://api.github.com/repos/remino/mkprj/tarball/v2.0.0"
	sha256 "c2266e9ba47756c91774527d2814b4542c285f4a9de37ab2532239d189e658b2"
	version "2.0.0"
	license "ISC"

	def install
		bin.install "./mkprj"
	end

	test do
		system "./mkprj", "-v"
	end
end
