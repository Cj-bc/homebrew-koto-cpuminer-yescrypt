require "formula"

class MonacoinCpuminerMulti < Formula
  desc "crypto cpuminer (linux + windows)"
  homepage "https://github.com/monacoinproject/cpuminer-multi"
  version "1.2"
  url "https://github.com/monacoinproject/cpuminer-multi/archive/v#{version}-multi.tar.gz"
  sha256 "da2e9a50cc728c5cdc55e4a4de4d609ff1ca2f636a61b19d08afc124b0829f5f"

  depends_on "curl" => :build
  depends_on "openssl" => :build
  depends_on "automake" => :build
  depends_on "autoconf" => :build

  def install
    system "./autogen.sh"
    system "./nomacro.pl"
    system "./configure CFLAGS='-march=native' --with-crypto=/usr/local/opt/openssl --with-curl"
    inreplace "algo/neoscrypt.c", "#if \(WINDOWS\)", "#define ASM 0\n#if (WINDOWS)"
    system "make"
  end
end
