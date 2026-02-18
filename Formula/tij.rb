class Tij < Formula
  desc "Text-mode Interface for Jujutsu version control system"
  homepage "https://github.com/nakamura-shuta/tij"
  url "https://github.com/nakamura-shuta/tij/archive/refs/tags/v0.3.35.tar.gz"
  sha256 "87d59b892ef27ff858403e45a05c0d71443ddeef3f1e70dab4f95ab5233a71fb"
  license "MIT"

  depends_on "rust" => :build
  depends_on "jj"

  def install
    system "cargo", "install", "--locked", *std_cargo_args
  end

  test do
    assert_match "tij", shell_output("#{bin}/tij --version")
  end
end
