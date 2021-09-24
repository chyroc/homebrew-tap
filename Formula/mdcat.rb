# frozen_string_literal: true

# brew config for mdcat
class Mdcat < Formula
  desc "Convert markdown to github style html page"
  homepage "https://github.com/chyroc/go-mdcat"
  url "https://github.com/chyroc/go-mdcat/releases/download/v0.2.0/go-mdcat-0.2.0.tar.gz"
  sha256 "4549f5408da3e0b8634090bab40cfbe6862946597e2b98d9e09ab36087692df6"
  license "Apache-2.0"
  head "https://github.com/chyroc/go-mdcat"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
