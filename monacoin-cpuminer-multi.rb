require "formula"

class MonacoinCpuminerMulti < Formula
  desc "crypto cpuminer (linux + windows)"
  homepage "https://github.com/monacoinproject/cpuminer-multi"
  version "1.2"
  url "https://github.com/monacoinproject/cpuminer-multi/archive/v#{version}-multi.tar.gz"

  depends_on "curl" => :build
  depends_on "zlib" => :build
  depends_on "openssl" => :build

  def install
    system "./autogen.sh"
    system "./nomacro.pl"
    system "./configure CFLAGS='-march=native' --with-crypto=/usr/local/opt/openssl --with-curl"
    inreplace algo/neoscrypt.c, "#if \(WINDOWS\)", "#define ASM 0\n#if (WINDOWS)"
    system "make"
  end
end
