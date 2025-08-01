class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  version "1.0.13"
  license "Apache-2.0"

  url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v1.0.13/kubiks-v1.0.13-darwin-amd64.tar.gz"
  sha256 "d0beb2fdbee4c498485eceff08888541480d037156a212f8e021cf9330b7eb4b"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
