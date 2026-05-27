class Tij < Formula
  desc "Text-mode Interface for Jujutsu version control system"
  homepage "https://github.com/nakamura-shuta/tij"
  url "https://github.com/nakamura-shuta/tij/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "13805b6a732419e85bc2a92941295fb022a45356e1b76c093affc4135f1d9364"
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
