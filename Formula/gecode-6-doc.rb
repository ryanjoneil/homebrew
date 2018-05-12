class Gecode6Doc < Formula
  desc "Generic Constraint Development Environment: Documentation"
  homepage "http://www.gecode.org/"
  url "http://www.gecode.org/download/gecode-doc-6.0.0.tar.gz"
  sha256 "38b02318135c083b84fb64f0d5e7da6ccfd9f6d9a1e94b246132618bdcdc7e54"
  version "6.0.0"

  def install
    doc.install Dir["*"]
  end
end
