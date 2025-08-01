class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  license "Apache-2.0"

  # Version 1.0.8
  if Hardware::CPU.arm?
    url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v1.0.8/kubiks-v1.0.8-darwin-arm64.tar.gz"
    sha256 "ba6e72f47ae7ae8a3f4972dd560080e98425950277b115fd24ae056e022e4548"
  else
    url "https://github.com/kubiks-inc/kubiks-cli/releases/download/v1.0.8/kubiks-v1.0.8-darwin-amd64.tar.gz"
    sha256 "fb1b06aa4f9aa1dc7c9b8c306bf7615250cf3fb60a3c368b136116eb604f20f9"
  end

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
