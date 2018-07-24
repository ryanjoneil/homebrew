class Gecode6 < Formula
  desc "Generic Constraint Development Environment"
  homepage "http://www.gecode.org/"
  url "https://github.com/Gecode/gecode/archive/release-6.0.1.tar.gz"
  sha256 "8bef2fd195a99d28c83018255bd88e30f033007859cccee26f20e9e2683dcc82"
  version "6.0.1"

  depends_on "boost"
  depends_on "mpfr"
  depends_on "qt"

  def install
    system "./configure", "--with-mpfr-lib", "--disable-examples", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
    lib.install
    include.install "gecode"
  end
end
