class Scip3 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-3.2.1.tgz"
  sha256 "419968d118d8a9fc8bce05d3fd2f5fdd40a23818a7b1e9c0d9e482ad7590e98c"
  version "3.2.1"

  depends_on "homebrew/science/ipopt"
  depends_on "zlib"

  depends_on "gmp"
  depends_on "readline"

  def install
    system "make", "ZIMPL=true"
    system "make", "scipoptlib", "ZIMPL=true"

    # SCIP installation path is currently broken.
    system "perl", "-pi", "-e", "s|INSTALLDIR=../|INSTALLDIR=|", "Makefile"

    system "make", "install", "INSTALLDIR=#{prefix}"

    bin.install
    lib.install
    include.install
  end
end
