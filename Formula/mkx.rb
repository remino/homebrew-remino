class Mkx < Formula
	desc "Make new shell script executable file from template"
	version "3.0.0"
	homepage "https://github.com/remino/mkx"
	url "https://api.github.com/repos/remino/mkx/tarball/v#{version}"
	sha256 "4d03da6ccb4e5a72693b4143d5fe807813ba5957364afce764aaf67d52fd945d"
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
