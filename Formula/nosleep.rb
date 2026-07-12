class Nosleep < Formula
  desc "Keep your Mac awake with the lid closed, with an auto-off timer"
  homepage "https://github.com/wynnwu/nosleep"
  url "https://github.com/wynnwu/nosleep/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "99994f035d0ac1ab36591c91b142b39a1bb16d84cc3388fbc3042946acf5b4dd"
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
