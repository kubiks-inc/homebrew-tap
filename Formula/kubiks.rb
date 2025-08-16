class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v2.0.2/kubiks-v2.0.2-darwin-amd64.tar.gz"
  version "2.0.2"
  sha256 "ee4eae697857576f541d8795f828670e54384605fa97a9f4db148c65cbf8ff31"
  license "Apache-2.0"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
