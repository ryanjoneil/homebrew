class Gecode6Doc < Formula
  desc "Generic Constraint Development Environment: Documentation"
  homepage "http://www.gecode.org/"
  url "https://github.com/Gecode/gecode/releases/download/release-6.1.0/gecode-doc-6.1.0.tar.gz"
  sha256 "087591076a941fa29787271819193fb5eb011e129abfe73857367a9347e52a18"
  version "6.1.0"

  def install
    doc.install Dir["*"]
  end
end
