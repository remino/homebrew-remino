class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.8"
	sha256 "18dee51c68f838b63f88ee2e264a2b4b47b0f6593f7ef2eba3e19984d8cf1a92"
	version "2.0.8"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
