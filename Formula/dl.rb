# frozen_string_literal: true

# brew config for dl
class Dl < Formula
  desc "Tool for download wbesite video"
  homepage "https://github.com/chyroc/dl"
  url "https://github.com/chyroc/otp-cli/releases/download/v0.3.0/otp-cli-0.3.0.tar.gz"
  sha256 "b0c3a0afb4f886db32bcc12ed3d6eec985fe9cf4487e4db4dd12557dfbdd5dcafe"
  license "Apache-2.0"
  head "https://github.com/chyroc/dl"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
