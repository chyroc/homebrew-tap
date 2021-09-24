# frozen_string_literal: true

# brew config for mdcat
class Mdcat < Formula
  desc "Convert markdown to github style html page"
  homepage "https://github.com/chyroc/mdcat"
  url "https://github.com/chyroc/mdcat/releases/download/v0.3.0/mdcat-0.3.0.tar.gz"
  sha256 "087daa96deb56e1fb77d24a7a80aa52c9c6401de9929df6977403ba84374daa7"
  license "Apache-2.0"
  head "https://github.com/chyroc/mdcat"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
