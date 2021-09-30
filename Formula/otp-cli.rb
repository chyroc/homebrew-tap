# frozen_string_literal: true

# brew config for otp-cli
class OtpCli < Formula
  desc "Tool for generate otp code in terminal"
  homepage "https://github.com/chyroc/otp-cli"
  url "https://github.com/chyroc/otp-cli/releases/download/v0.4.0/otp-cli-0.4.0.tar.gz"
  sha256 "9ae6379ddedfb048a4e4bd7e54edca026b107d679389f2fe0b14268b4ee82a58"
  license "Apache-2.0"
  head "https://github.com/chyroc/otp-cli"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    (testpath/"secret.txt").write "testsecret"

    assert_equal "otp-cli version v#{pkg_version}\n", shell_output("#{bin}/otp-cli version")
    from_string = shell_output("#{bin}/otp-cli -s testsecret")
    assert_equal 7, from_string.length
    from_file = shell_output("#{bin}/otp-cli -f secret.txt")
    assert_equal 7, from_file.length
    assert_equal from_string, from_file
  end
end
