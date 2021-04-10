# frozen_string_literal: true

# brew config for dropbox-save-url
class DropboxSaveUrl < Formula
  desc "save url to dropbox"
  homepage "https://github.com/chyroc/dropbox-save-url"
  url "https://github.com/chyroc/dropbox-save-url/releases/download/v0.1.0/dropbox-save-url-0.1.1.tar.gz"
  sha256 "a2bdb1b551cd605b97d7f20078b61e7f2a5821765d7fe2e1ca18eed3e023d6f0"
  license "Apache-2.0"
  head "https://github.com/chyroc/dropbox-save-url"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
