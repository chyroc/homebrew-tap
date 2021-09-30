# frozen_string_literal: true

# brew config for mdcat
class Mdcat < Formula
  desc "Convert markdown to github style html page"
  homepage "https://github.com/chyroc/mdcat"
  url "https://github.com/chyroc/mdcat/releases/download/v0.7.0/mdcat-0.7.0.tar.gz"
  sha256 "a5924e47591ae528c33a2b5314de6482b36317b1f01f17c24425adf09c595635"
  license "Apache-2.0"
  head "https://github.com/chyroc/mdcat"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
