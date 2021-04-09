# frozen_string_literal: true

# brew config for media-to-github
class MediaToGitHub < Formula
  desc "Tool for upload media file to github"
  homepage "https://github.com/chyroc/media-to-github"
  url "https://github.com/chyroc/media-to-github/releases/download/v0.1.0/media-to-github-0.1.0.tar.gz"
  sha256 "b0c3a0afb4f886db32bcc12ed3d6eec985fe9cf4487e4db412557dfbdd5dcafe"
  license "Apache-2.0"
  head "https://github.com/chyroc/media-to-github"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
