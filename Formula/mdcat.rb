# frozen_string_literal: true

# brew config for mdcat
class Mdcat < Formula
  desc "Convert markdown to github style html page"
  homepage "https://github.com/chyroc/go-mdcat"
  url "https://github.com/chyroc/go-mdcat/releases/download/v0.1.0/go-mdcat-0.1.0.tar.gz"
  sha256 "d5b4eb8c496a3e8cb5f96fd01a17bff914b8b27c4c8020ed1bd6fb9f6f97064b"
  license "Apache-2.0"
  head "https://github.com/chyroc/go-mdcat"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
