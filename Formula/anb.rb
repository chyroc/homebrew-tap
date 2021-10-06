# frozen_string_literal: true

# brew config for anb
class Anb < Formula
  desc "tool to operator server"
  homepage "https://github.com/chyroc/anb"
  url "https://github.com/chyroc/anb/releases/download/v0.1.0/anb-0.1.0.tar.gz"
  sha256 "e28c836788a937cc4d48a3bdfbe17304683e1c6f8d4436c34d39794b985c5820"
  license "Apache-2.0"
  head "https://github.com/chyroc/anb"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
