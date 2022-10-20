class Anb < Formula
  desc "部署服务"
  homepage "https://github.com/chyroc/anb"
  head "https://github.com/chyroc/anb.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"anb", ldflags: "-s -w")
  end
end
