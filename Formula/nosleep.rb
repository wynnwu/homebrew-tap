class Nosleep < Formula
  desc "Keep your Mac awake with the lid closed, with an auto-off timer"
  homepage "https://github.com/wynnwu/nosleep"
  url "https://github.com/wynnwu/nosleep/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "0b391be83ec151f3db1f12abc1de0d4f731bb84a4a9c6a52560e9784e23837bf"
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
