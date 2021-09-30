# frozen_string_literal: true

# brew config for serve
class Serve < Formula
  desc "Static file hosting"
  homepage "https://github.com/chyroc/serve"
  url "https://github.com/chyroc/serve/releases/download/v0.2.0/serve-0.2.0.tar.gz"
  sha256 "7c4cea4152015cc5350f7212692f465613be0cc0eaf3bb037100588619321dbd"
  license "Apache-2.0"
  head "https://github.com/chyroc/serve"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
