# frozen_string_literal: true

# brew config for serve
class Serve < Formula
  desc "Static file hosting"
  homepage "https://github.com/chyroc/serve"
  url "https://github.com/chyroc/serve/releases/download/v0.1.0/serve-0.1.0.tar.gz"
  sha256 "1607bbb9b94ff204ebaad5d3707125686e6284e50e65c9a0eb525d0122c65557"
  license "Apache-2.0"
  head "https://github.com/chyroc/serve"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
