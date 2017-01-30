class JsonForModernCpp2 < Formula
  desc "JSON for Modern C++"
  homepage "https://github.com/nlohmann/json/"
  url "https://github.com/nlohmann/json/archive/v2.1.0.tar.gz"
  sha256 "3bf84b66959383e7c54d5ad4a13a9881f37d978e0fb6ff95e6943debbbe65a88"
  version "2.1.0"

  def install
    include.install "src/json.hpp"
  end
end
