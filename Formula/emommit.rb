# frozen_string_literal: true

# brew config for emomit
class Emomit < Formula
  desc "git commit with emoji"
  homepage "https://github.com/chyroc/emomit"
  url "https://github.com/chyroc/emomit/releases/download/v0.2.0/emomit-0.2.0.tar.gz"
  sha256 "c4fb14a4d2d9c115e02e3bc45a5b7cd24612d4d7f4d7513a044ddf3d4f9da818"
  license "Apache-2.0"
  head "https://github.com/chyroc/emomit"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
