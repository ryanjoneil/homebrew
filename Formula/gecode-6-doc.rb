class Gecode6Doc < Formula
  desc "Generic Constraint Development Environment: Documentation"
  homepage "http://www.gecode.org/"
  url "http://www.gecode.org/download/gecode-doc-6.0.1.tar.gz"
  sha256 "b99eaa2de6923bc526891a8c2bca781f8f26b29aefbe0cbffe3f85233e4b53d4"
  version "6.0.1"

  def install
    doc.install Dir["*"]
  end
end
