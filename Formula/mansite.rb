class Mansite < Formula
	desc "Plain and simple Middleman site template"
	homepage "https://github.com/remino/mansite"
	url "https://api.github.com/repos/remino/mansite/tarball/v2.0.7"
	sha256 "103582a0f5db89a536cfc5b9f89f103d5ca60b0f64190ce5f698971f32b284b9"
	version "2.0.7"
	license "ISC"

	def install
		bin.install "./mansite"
	end

	test do
		system "./mansite", "-v"
	end
end
