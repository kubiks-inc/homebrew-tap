class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  version "1.0.15"
  license "Apache-2.0"

  url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v1.0.15/kubiks-v1.0.15-darwin-amd64.tar.gz"
  sha256 "a7052678793bfaae63e2d4a8fa46239d6e5530be708016b904639a5ae565ebb8"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
