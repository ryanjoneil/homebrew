class Qt4 < Formula
  desc "Qt cross-platform widget kit"
  homepage "http://www.qt.io/"
  url "https://download.qt.io/official_releases/qt/4.8/4.8.7/qt-everywhere-opensource-src-4.8.7.tar.gz"
  sha256 "e2882295097e47fe089f8ac741a95fef47e0a73a3f3cdf21b56990638f626ea0"
  version "4.8.7"

  def install
    system "./configure", "-opensource", "-confirmlicense", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
    bin.install
    lib.install
    include.install
  end
end
