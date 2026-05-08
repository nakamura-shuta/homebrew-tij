class Tij < Formula
  desc "Text-mode Interface for Jujutsu version control system"
  homepage "https://github.com/nakamura-shuta/tij"
  url "https://github.com/nakamura-shuta/tij/archive/refs/tags/v0.4.25.tar.gz"
  sha256 "7851cda32c9dbcc9dd6a3ec1c7febb14e51329c21c1409ee81c1d6b2bf6749dd"
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
