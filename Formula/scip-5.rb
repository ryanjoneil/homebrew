class Scip5 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-5.0.0.tgz"
  sha256 "af47dd1c28997de857ba54761dc32cbfc54ab739c4050d37efa30cde740baf62"
  version "5.0.0"

  depends_on "homebrew/science/ipopt"
  depends_on "homebrew/homebrew-dupes/zlib"

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
