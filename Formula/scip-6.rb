class Scip6 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-6.0.2.tgz"
  sha256 "e25329a2ed4fbdde8a32279a4c955ee7a8b8795429b6e7105ae17998c2ecbe66"
  version "6.0.2"

  depends_on "dartsim/dart/ipopt"
  depends_on "zlib"

  depends_on "gmp"
  depends_on "readline"

  def install
    system "make", "ZIMPL=true", "SHARED=false"
    system "make", "install", "ZIMPL=true", "SHARED=false", "INSTALLDIR=#{prefix}"

    bin.install
    lib.install
    include.install
  end
end
