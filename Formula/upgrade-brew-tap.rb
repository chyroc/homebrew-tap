# frozen_string_literal: true

# brew config for upgrade-brew-tap
class UpgradeBrewTap < Formula
  desc "fake"
  homepage "https://github.com/chyroc/upgrade-brew-tap"
  url "https://github.com/chyroc/upgrade-brew-tap/releases/download/v0.24.0/upgrade-brew-tap-0.24.0.tar.gz"
  sha256 "d2b142314006510b2976a76c52b1a77e453815518dcaad3ebfeac36809822be4"
  license "Apache-2.0"
  head "https://github.com/chyroc/upgrade-brew-tap"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
