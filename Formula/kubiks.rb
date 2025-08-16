class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  version "2.0.1"
  license "Apache-2.0"

  url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v2.0.1/kubiks-v2.0.1-darwin-amd64.tar.gz"
  sha256 "8d19b5ae83818767bc790305f645a40a4215c1d16dd2b1eed7e3b937136408e6"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
