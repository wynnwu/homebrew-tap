class Nosleep < Formula
  desc "Keep your Mac awake with the lid closed, with an auto-off timer"
  homepage "https://github.com/wynnwu/nosleep"
  url "https://github.com/wynnwu/nosleep/archive/refs/tags/v1.3.4.tar.gz"
  sha256 "bd88837626495f5ad1ce90f55835ca2f6b3c748da779f25f991f9194384d9b31"
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
