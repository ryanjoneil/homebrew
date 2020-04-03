class Scip7 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-7.0.0.tgz"
  sha256 "9621fa3f94e3341830d4178d20c9219a2cfaec38bb4e68f72cf30843d648c344"
  version "7.0.0"

  depends_on "bison"
  depends_on "flex"
  depends_on "gmp"
  depends_on "ipopt"
  depends_on "pkg-config"
  depends_on "readline"
  depends_on "zlib"

  def install
    mkdir "build" do
      system "/usr/local/bin/cmake", "..", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DIPOPT=on", "-DIPOPT_DIR=/usr/local/opt/ipopt"
      system "make"
      system "make", "install"

      bin.install
      lib.install
      include.install
    end
  end
end
