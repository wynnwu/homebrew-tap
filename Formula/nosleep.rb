class Nosleep < Formula
  desc "Keep your Mac awake with the lid closed, with an auto-off timer"
  homepage "https://github.com/wynnwu/nosleep"
  url "https://github.com/wynnwu/nosleep/archive/refs/tags/v1.3.3.tar.gz"
  sha256 "59c2edcbe47ae31be03fea9656832e7409edd264b000493e712a98b1e16f48e9"
  license "MIT"

  depends_on :macos

  def install
    bin.install "nosleep"
    man1.install "man/nosleep.1"
  end

  test do
    assert_match "nosleep #{version}", shell_output("#{bin}/nosleep version")
  end
end
