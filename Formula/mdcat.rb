# frozen_string_literal: true

# brew config for mdcat
class Mdcat < Formula
  desc "Convert markdown to github style html page"
  homepage "https://github.com/chyroc/mdcat"
  url "https://github.com/chyroc/mdcat/releases/download/v0.4.0/mdcat-0.4.0.tar.gz"
  sha256 "8b8e296caa197ae8b473eb59c6843539c97bef9ecb7d8a322cd98aaa457697f8"
  license "Apache-2.0"
  head "https://github.com/chyroc/mdcat"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
