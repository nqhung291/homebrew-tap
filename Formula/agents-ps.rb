class AgentsPs < Formula
  desc "Read-only view of the AI coding agents running on your Mac"
  homepage "https://github.com/nqhung291/agents-ps"
  url "https://github.com/nqhung291/agents-ps/releases/download/v0.2.0/agents-ps-v0.2.0-macos-universal.tar.gz"
  sha256 "2d6739236af4f990379f65433659fd048c59428f51753b3a4be404f801d4b094"
  license "MIT"
  version "0.2.0"

  bottle do
    root_url "https://github.com/nqhung291/agents-ps/releases/download/v0.2.0"
    sha256 cellar: :any, arm64_tahoe: "f6b64654a1d20e12a8facd32304f1eac259533865a07f6f386fcb6c2e81c901f"
  end

  depends_on :macos

  def install
    bin.install "agents-ps"
  end

  test do
    assert_match "agents-ps #{version}", shell_output("#{bin}/agents-ps --version")
  end
end
