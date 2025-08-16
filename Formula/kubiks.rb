class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v2.0.4/kubiks-v2.0.4-darwin-amd64.tar.gz"
  version "2.0.4"
  sha256 "d0856cd88680cd363215427d912627ad916050a140eb80e9390b53b12528f5f3"
  license "Apache-2.0"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
