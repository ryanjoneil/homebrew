class Gecode6 < Formula
  desc "Generic Constraint Development Environment"
  homepage "http://www.gecode.org/"
  url "https://github.com/Gecode/gecode/archive/release-6.0.0.tar.gz"
  sha256 "58621b01fd069a488a3020491ec36b4293a5da42e7750bd8fc758b0c3a92daad"
  version "6.0.0"

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
