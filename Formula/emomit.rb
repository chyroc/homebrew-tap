# frozen_string_literal: true

# brew config for emomit
class Emomit < Formula
  desc "git commit with emoji"
  homepage "https://github.com/chyroc/emomit"
  url "https://github.com/chyroc/emomit/releases/download/v0.3.0/emomit-0.3.0.tar.gz"
  sha256 "00acb9fc464127634ba93db6d2b5fc0eba81e9192c3f97a5b3cb77d047fea234"
  license "Apache-2.0"
  head "https://github.com/chyroc/emomit"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
