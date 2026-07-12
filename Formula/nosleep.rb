class Nosleep < Formula
  desc "Keep your Mac awake with the lid closed, with an auto-off timer"
  homepage "https://github.com/wynnwu/nosleep"
  url "https://github.com/wynnwu/nosleep/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "604bfc2487d8eea00a6dbd250ba3aad3f3adba149c67bfcd06aa0237524c0c38"
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
