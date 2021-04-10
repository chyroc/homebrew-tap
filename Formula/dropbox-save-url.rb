# frozen_string_literal: true

# brew config for dropbox-save-url
class DropboxSaveUrl < Formula
  desc "save url to dropbox"
  homepage "https://github.com/chyroc/dropbox-save-url"
  url "https://github.com/chyroc/dropbox-save-url/releases/download/v0.1.0/dropbox-save-url-0.1.0.tar.gz"
  sha256 "ed9c51608e212fc67e94c1b1db461688b01f89ebd3f60d75a82528adbce3ee70"
  license "Apache-2.0"
  head "https://github.com/chyroc/dropbox-save-url"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
