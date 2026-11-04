class AgentsPs < Formula
  desc "Read-only view of the AI coding agents running on your Mac"
  homepage "https://github.com/nqhung291/agents-ps"
  url "https://github.com/nqhung291/agents-ps/releases/download/v0.1.0/agents-ps-v0.1.0-macos-universal.tar.gz"
  sha256 "51fb0ce5de98295ee98633a8e330f54b7465f59990d922249b27b70fb972a7fd"
  license "MIT"
  version "0.1.0"

  bottle do
    root_url "https://github.com/nqhung291/agents-ps/releases/download/v0.1.0"
    sha256 cellar: :any, arm64_tahoe: "2bd296872a7aa3ce73f03808b26c5ef3bdef9ae82b0fe359a11256d4deab7882"
  end

  depends_on :macos

  def install
    bin.install "agents-ps"
  end

  test do
    assert_match "agents-ps #{version}", shell_output("#{bin}/agents-ps --version")
  end
end
