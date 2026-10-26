class WpcMigrate < Formula
  desc "Move WordPress sites from LocalWP into wp-container"
  homepage "https://github.com/s3rgiosan/wpc-migrate"
  url "https://github.com/s3rgiosan/wpc-migrate/releases/download/1.3.0/wpc-migrate-macos-arm64.tar.gz"
  version "1.3.0"
  sha256 "4878362a5a43988ebefbcbbf2e805b689978785d27d319eac005898d61c151be"
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
