class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  version "1.0.18"
  license "Apache-2.0"

  url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v1.0.18/kubiks-v1.0.18-darwin-amd64.tar.gz"
  sha256 "81f0c2f367f0fb3266f78bf0b435506a5159d48c11206d49716385e15cd73f70"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
