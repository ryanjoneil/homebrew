class Gecode5 < Formula
  desc "Generic Constraint Development Environment"
  homepage "http://www.gecode.org/"
  url "https://github.com/Gecode/gecode/archive/release-5.1.0.tar.gz"
  sha256 "f9885f97e0f80b54eaf1a8f9d0c419d831229a689619f6429c6148f5c50740d0"
  version "5.1.0"

  depends_on "boost"
  depends_on "mpfr"

  def install
    system "./configure", "--with-mpfr-lib", "--disable-examples", "--disable-gist", "--disable-qt", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
    lib.install
    include.install "gecode"
  end
end
