class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  version "1.0.9"
  license "Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v1.0.9/kubiks-v1.0.9-darwin-arm64.tar.gz"
    sha256 "a062402151d7a251190f67a30e0ce8f464668c752ccf8d6dfa483640db07bc55"
  else
    url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v1.0.9/kubiks-v1.0.9-darwin-amd64.tar.gz"
    sha256 "6ca2b1bf3f300488f45942da8c7afce91dd7c00da7e43c9d46f22eec89317ab0"
  end

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
