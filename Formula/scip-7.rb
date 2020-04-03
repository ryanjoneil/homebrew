class Scip6 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-7.0.0.tgz"
  sha256 "9621fa3f94e3341830d4178d20c9219a2cfaec38bb4e68f72cf30843d648c344"
  version "7.0.0"

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
