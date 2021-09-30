# frozen_string_literal: true

# brew config for mdcat
class Mdcat < Formula
  desc "Convert markdown to github style html page"
  homepage "https://github.com/chyroc/mdcat"
  url "https://github.com/chyroc/mdcat/releases/download/v0.6.0/mdcat-0.6.0.tar.gz"
  sha256 "19759948b06f8d26ff3aef26974df510227a2b8c30ddff36f4165dd8a923c4cf"
  license "Apache-2.0"
  head "https://github.com/chyroc/mdcat"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
