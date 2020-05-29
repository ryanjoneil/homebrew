class Gecode5 < Formula
  desc "Generic Constraint Development Environment"
  homepage "http://www.gecode.org/"
  url "https://github.com/Gecode/gecode/archive/release-5.1.0.tar.gz"
  sha256 "77863f4638c6b77d24a29bf6aeac370c56cd808fe9aabc1fca96655581f6c83d"
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
