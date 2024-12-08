class Mkx < Formula
	desc "Make new shell script executable file from template"
	homepage "https://github.com/remino/mkx"
	url "https://api.github.com/repos/remino/mkx/tarball/v3.1.0"
	sha256 "9fd4c3ef53dddeeb914f9761f1ce74fe329ce7f6d9035c908ba1f10a67f1059a"
	version "3.1.0"
	license "ISC"

	def install
		libexec.install "mkx"
		lib.install Dir["lib/*"]
		(pkgshare/"templates").install Dir["templates/*"]
		man1.install "man/mkx.1"

		(bin/"mkx").write <<~EOS
			#!/usr/bin/env bash
			export MKX_LIB_DIR="#{lib}"
			export MKX_TEMPLATES_DIR="#{pkgshare}/templates"
			exec "#{libexec}/mkx" "$@"
		EOS
	end

	test do
		system "#{bin}/mkx", "-v"
	end
end
