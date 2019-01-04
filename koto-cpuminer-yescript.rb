require "formula"

class KotoCpuminerYescript < Formula
  desc "CPU miner for Koto"
  homepage "https://github.com/KotoDevelopers/cpuminer-yescrypt"
  version "3.1"
  url "https://github.com/KotoDevelopers/cpuminer-yescrypt/archive/v#{version}.tar.gz"

  depends_on "autoconf" => [:build, "2.57"]
  depends_on "automake" => [:build, "1.7"]

  def install
    system "./autogen.sh"
    system "./nomacro.pl"
    system "./configure CFLAGS='-3'"
    system "make"
  end
end
