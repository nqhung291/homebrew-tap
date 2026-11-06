class Agtop < Formula
  desc "Top for AI coding agents: read-only view of what they run on your Mac"
  homepage "https://github.com/nqhung291/agtop"
  url "https://github.com/nqhung291/agtop/releases/download/v0.3.0/agtop-v0.3.0-macos-universal.tar.gz"
  sha256 "baf16905aa73051e5563be1b68332d91699f0c2e6e07c1d339520a7205c64b66"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agtop"
  end

  test do
    assert_match "agtop #{version}", shell_output("#{bin}/agtop --version")
  end
end
