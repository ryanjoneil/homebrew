class Gecode6 < Formula
  desc "Generic Constraint Development Environment"
  homepage "http://www.gecode.org/"
  url "https://github.com/Gecode/gecode/archive/release-6.1.0.tar.gz"
  sha256 "e02e48aa90870a25509de2aeb99662d8b51c1de60cae4a34a78d4b6e9321e7ae"
  version "6.1.0"

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
