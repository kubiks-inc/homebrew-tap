class Kubiks < Formula
  desc "AI-powered debugging for Next.js with OpenTelemetry and MCP integration"
  homepage "https://github.com/kubiks-inc/kubiks-cli"
  # Update these values when releasing a new version:
  # 1. Upload kubiks-darwin.tar.gz to GitHub releases
  # 2. Update URL to point to the new release
  # 3. Calculate SHA256: shasum -a 256 kubiks-darwin.tar.gz
  url "https://github.com/kubiks-inc/tap/releases/download/v1.0.5/kubiks-darwin.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_UPLOADING_BINARY"
  license "Apache-2.0"

  def install
    bin.install "kubiks"
  end

  test do
    assert_match "kubiks", shell_output("#{bin}/kubiks --help")
  end
end
