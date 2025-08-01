class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  url "https://github.com/kubiks-inc/kubiks-cli/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "883fbf9ac110f49814331aa4550560f375e642e16de30cf77768540db580bcb2"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"kubiks", "./main.go"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
