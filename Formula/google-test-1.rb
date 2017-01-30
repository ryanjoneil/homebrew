class GoogleTest1 < Formula
  desc "Google Test"
  homepage "https://github.com/google/googletest"
  url "https://github.com/google/googletest/archive/release-1.8.0.tar.gz"
  sha256 "58a6f4277ca2bc8565222b3bbd58a177609e9c488e8a72649359ba51450db7d8"
  version "1.8.0"

  depends_on "cmake"

  def install
    system "cmake", ".", "-DCMAKE_INSTALL_PREFIX:PATH=#{prefix}"
    system "make"
    system "make", "install"
    lib.install
    include.install
  end
end
