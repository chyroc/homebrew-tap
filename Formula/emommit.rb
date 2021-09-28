# frozen_string_literal: true

# brew config for emommit
class Emommit < Formula
  desc "git commit with emoji"
  homepage "https://github.com/chyroc/emommit"
  url "https://github.com/chyroc/emommit/releases/download/v0.1.0/emommit-0.1.0.tar.gz"
  sha256 "4da31541f8b79b7421ba624d3338da31b07940c8c33b981e9b7c5ea5ed8030f3"
  license "Apache-2.0"
  head "https://github.com/chyroc/emommit"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
