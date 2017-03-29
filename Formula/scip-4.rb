class Scip4 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-4.0.0.tgz"
  sha256 "087535760eae3d633e2515d942a9b22e1f16332c022be8d093372bdc68e8a661"
  version "4.0.0"

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
