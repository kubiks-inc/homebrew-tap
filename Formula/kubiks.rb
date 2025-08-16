class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v2.0.3/kubiks-v2.0.3-darwin-amd64.tar.gz"
  version "2.0.3"
  sha256 "cd9d31f011405cf49072e6e78d043a60e197ec2cc8865ebd99b486d8d99a8914"
  license "Apache-2.0"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
