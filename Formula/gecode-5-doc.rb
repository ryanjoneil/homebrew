class Gecode5Doc < Formula
  desc "Generic Constraint Development Environment: Documentation"
  homepage "http://www.gecode.org/"
  url "http://www.gecode.org/download/gecode-doc-5.0.0.tar.gz"
  sha256 "ab3df3be27a4da2f5fbe4e64dc42bc2c7f066a030bdec971f78a9f5c298a5c7a"
  version "5.0.0"

  def install
    doc.install Dir["*"]
  end
end
