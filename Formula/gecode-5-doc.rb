class Gecode5Doc < Formula
  desc "Generic Constraint Development Environment: Documentation"
  homepage "http://www.gecode.org/"
  url "http://www.gecode.org/download/gecode-doc-5.1.0.tar.gz"
  sha256 "d426d0ff16673ab3a0e29db2745b3cf57ce81715c14171e0e480bce55f3c1832"
  version "5.1.0"

  def install
    doc.install Dir["*"]
  end
end
