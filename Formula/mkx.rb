class Mkx < Formula
	desc "Make new shell script executable file from template"
	homepage "https://github.com/remino/mkx"
	url "https://api.github.com/repos/remino/mkx/tarball/v3.1.2"
	sha256 "094231722a8e1b09ad930a3a34d517781ec650d568f3e83a5138fd2c4bca9235"
	version "3.1.2"
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
