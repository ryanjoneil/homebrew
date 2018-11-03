class Scip6 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-6.0.0.tgz"
  sha256 "a91119687e521575070c43eaa30bc15ce461e9dc414651793ea4c4ca33b89750"
  version "6.0.0"

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
