class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v2.0.1/kubiks-v2.0.1-darwin-amd64.tar.gz"
  version "2.0.1"
  sha256 "8ef8ad0bc06e68e00605b27c09b341e79abbab1edc99892f2828f9904a66402b"
  license "Apache-2.0"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
