class Scip4 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-4.0.0.tgz"
  sha256 "4b5fc921880728ab99c089413cf662a0ce964cedf291ec4ee0f399405723c594"
  version "4.0.0"

  depends_on "homebrew/science/ipopt"
  depends_on "homebrew/homebrew-dupes/zlib"

  depends_on "gmp"
  depends_on "readline"

  def install
    system "make", "ZIMPL=true"
    system "make", "scipoptlib"

    # SCIP installation path is currently broken.
    system "perl", "-pi", "-e", "s|INSTALLDIR=../|INSTALLDIR=|", "Makefile"

    system "make", "install", "INSTALLDIR=#{prefix}"

    bin.install
    lib.install
    include.install
  end
end
