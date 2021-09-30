# frozen_string_literal: true

# brew config for mdcat
class Mdcat < Formula
  desc "Convert markdown to github style html page"
  homepage "https://github.com/chyroc/mdcat"
  url "https://github.com/chyroc/mdcat/releases/download/v0.6.0/mdcat-0.6.0.tar.gz"
  sha256 "a51b2d3a514c2a9b64f0f36160602fbed6214ae5692f557f5e1fdae3fa12d0bc"
  license "Apache-2.0"
  head "https://github.com/chyroc/mdcat"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
