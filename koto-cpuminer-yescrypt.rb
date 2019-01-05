require "formula"

class KotoCpuminerYescrypt < Formula
  desc "CPU miner for Koto"
  homepage "https://github.com/KotoDevelopers/cpuminer-yescrypt"
  version "3.1"
  url "https://github.com/KotoDevelopers/cpuminer-yescrypt/archive/v#{version}.tar.gz"
  sha256 "f757ae324aacdf8ca281d9ee8de5dc3dc0e94c0efca364ea6757c27260d4da95"

  patch :DATA
  depends_on "autoconf" => [:build, "2.57"]
  depends_on "automake" => [:build, "1.7"]
  depends_on "curl" => :build

  def install
    mkdir "m4"
    system "cp #{HOMEBREW_PREFIX}/Cellar/curl/$(curl --version | head -n 1 | awk '{print $2}')/share/aclocal/libcurl.m4 m4/"
    system "./autogen.sh"
    system "./nomacro.pl"
    system "./configure CFLAGS='-O3'"
    system "make"
  end
end

__END__
diff --git a/Makefile.am b/Makefile.am
index b314ca7..66c7f74 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -34,3 +34,5 @@ minerd_LDFLAGS  = $(PTHREAD_FLAGS)
 minerd_LDADD = @LIBCURL@ @JANSSON_LIBS@ @PTHREAD_LIBS@ @WS2_LIBS@
 minerd_CPPFLAGS = @LIBCURL_CPPFLAGS@
 
+# added for mac build; see commit message for details
+ACLOCAL_AMFLAGS = -I m4
diff --git a/autogen.sh b/autogen.sh
index 989604a..46cbc2f 100755
--- a/autogen.sh
+++ b/autogen.sh
@@ -5,7 +5,8 @@
 
 set -e
 
-aclocal
+# patched; refer commit message for details
+aclocal -I m4
 autoheader
 automake --gnu --add-missing --copy
 autoconf
