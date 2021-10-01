# frozen_string_literal: true

# brew config for serve
class Serve < Formula
  desc "Static file hosting"
  homepage "https://github.com/chyroc/serve"
  url "https://github.com/chyroc/serve/releases/download/v0.3.0/serve-0.3.0.tar.gz"
  sha256 "1d983898ebbbbffdaf000b681742788048c27531e1f389e900e3188955a59c73"
  license "Apache-2.0"
  head "https://github.com/chyroc/serve"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
