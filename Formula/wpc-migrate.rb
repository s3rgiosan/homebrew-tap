class WpcMigrate < Formula
  desc "Move WordPress sites from LocalWP into wp-container"
  homepage "https://github.com/s3rgiosan/wpc-migrate"
  url "https://github.com/s3rgiosan/wpc-migrate/releases/download/1.4.0/wpc-migrate-macos-arm64.tar.gz"
  sha256 "5fd89651304d97ad1e9293a1723f87157e60abeca8a8db2bf4d5f4d999d8cce9"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "wpc-migrate"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/wpc-migrate --version").strip
  end
end
