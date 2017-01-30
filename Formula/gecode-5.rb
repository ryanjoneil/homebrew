class Gecode5 < Formula
  desc "Generic Constraint Development Environment"
  homepage "http://www.gecode.org/"
  url "http://www.gecode.org/download/gecode-5.0.0.tar.gz"
  sha256 "f4ff2fa115fed8c09a049b2d8520363b1f9b1a39d80461f597e29dab2ba9e77b"

  depends_on "boost"
  depends_on "mpfr"
  depends_on "qt"

  def install
    system "./configure", "--with-mpfr-lib", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
    lib.install
    include.install "gecode"
  end
end
