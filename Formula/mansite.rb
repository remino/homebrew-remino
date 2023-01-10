class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.2"
	sha256 "2a4cdb54799ce7e3598e2ed8acc070ad4cd8b26924d6797e92a41d6e7e744a60"
	version "2.0.2"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
