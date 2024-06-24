class Unzip2dir < Formula
	desc ""
	homepage "https://github.com/remino/unzip2dir"
	url "https://api.github.com/repos/remino/unzip2dir/tarball/v1.0.0"
	sha256 "de56bbca4b60e3437a704c05786451a6292cfc856bfecca3e5e66e1dbe225d54"
	version "1.0.0"
	license "ISC"

	def install
		bin.install "./unzip2dir"
	end

	test do
		system "./unzip2dir", "-v"
	end
end
