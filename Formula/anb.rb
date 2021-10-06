# frozen_string_literal: true

# brew config for anb
class Anb < Formula
  desc "tool to operator server"
  homepage "https://github.com/chyroc/anb"
  url "https://github.com/chyroc/anb/releases/download/v0.1.0/anb-0.1.0.tar.gz"
  sha256 "7ea434ad685da14acc4cce57b814e21702787370e701381764ed1b5393d6587b"
  license "Apache-2.0"
  head "https://github.com/chyroc/anb"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
