# frozen_string_literal: true

# brew config for ho
class Ho < Formula
  desc "Some toy Tool"
  homepage "https://github.com/chyroc/ho"
  url "https://github.com/chyroc/ho/releases/download/v0.1.0/ho-0.1.0.tar.gz"
  sha256 "ab518d38a90b1bff5d49212e6c400ab06d6280d31adf725fa21abfc902ba55ae"
  license "Apache-2.0"
  head "https://github.com/chyroc/ho"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
