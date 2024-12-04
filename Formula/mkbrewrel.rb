class Mkbrewrel < Formula
	desc "Create Brew release from GitHub release"
	homepage "https://github.com/remino/mkbrewrel"
	url "https://api.github.com/repos/remino/mkbrewrel/tarball/v2.0.3"
	sha256 "8eab88ea740fb6aa47735ea260b683e1c0dccbf1d3559ab1c3c4055609595072"
	version "2.0.3_1"
	license "ISC"

	def install
		libexec.install "mkbrewrel"
		lib.mkpath
		(lib/"mkbrewrel").install Dir["lib/*"], "lib/mkbrewrel"

		man1.install "man/mkbrewrel.1"

		(bin/"mkbrewrel").write <<~EOS
			#!/usr/bin/env bash
			export MKBREWREL_LIB_DIR="#{lib}/mkbrewrel"
			exec "#{libexec}/mkbrewrel" "$@"
		EOS
	end

	test do
		system "./mkbrewrel", "-v"
	end
end
