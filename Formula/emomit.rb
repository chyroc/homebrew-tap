# frozen_string_literal: true

# brew config for emomit
class Emomit < Formula
  desc "git commit with emoji"
  homepage "https://github.com/chyroc/emomit"
  url "https://github.com/chyroc/emomit/releases/download/v0.4.0/emomit-0.4.0.tar.gz"
  sha256 "5793d29edbad3583d700590a79ef32ec15303c63f943e619ef46870e70e56e45"
  license "Apache-2.0"
  head "https://github.com/chyroc/emomit"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
