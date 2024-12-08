class Mkx < Formula
	desc "Make new shell script executable file from template"
	homepage "https://github.com/remino/mkx"
	url "https://api.github.com/repos/remino/mkx/tarball/v3.1.1"
	sha256 "7bae0c7da39bdffe95202d53c3906758c839cb7067c60e2fa38a58c02ed14161"
	version "3.1.1"
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
