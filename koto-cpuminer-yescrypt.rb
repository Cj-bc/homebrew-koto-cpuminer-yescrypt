require "formula"

class KotoCpuminerYescrypt < Formula
  desc "CPU miner for Koto"
  homepage "https://github.com/KotoDevelopers/cpuminer-yescrypt"
  version "3.1"
  url "https://github.com/KotoDevelopers/cpuminer-yescrypt/archive/v#{version}.tar.gz"
  sha256 "f757ae324aacdf8ca281d9ee8de5dc3dc0e94c0efca364ea6757c27260d4da95"

  depends_on "autoconf" => [:build, "2.57"]
  depends_on "automake" => [:build, "1.7"]

  def install
    system "./autogen.sh"
    system "./nomacro.pl"
    system "./configure CFLAGS='-3'"
    system "make"
  end
end
