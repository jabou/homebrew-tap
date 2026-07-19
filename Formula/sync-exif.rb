class SyncExif < Formula
  desc "Apply camera metadata from XMP/XML sidecars to scanned film negatives"
  homepage "https://github.com/jabou/sync-exif"
  url "https://github.com/jabou/sync-exif/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6d64f90cf48672e7e7ad83a4e4558edc899ea82ecfdcbc317af5fb405694a1dc"
  license "MIT"

  depends_on "bash"
  depends_on "exiftool"

  def install
    bin.install "bin/sync-exif"
  end

  test do
    assert_match "sync-exif 0.1.0", shell_output("#{bin}/sync-exif --version")
  end
end
