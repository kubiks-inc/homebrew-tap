class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  url "https://github.com/kubiks-inc/kubiks-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Updated by workflow
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    # Build the binary from source
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"kubiks", "./main.go"
  end

  test do
    # Test that the binary was installed and can run
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
