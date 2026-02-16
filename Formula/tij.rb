class Tij < Formula
  desc "Text-mode Interface for Jujutsu version control system"
  homepage "https://github.com/nakamura-shuta/tij"
  url "https://github.com/nakamura-shuta/tij/archive/refs/tags/v0.3.29.tar.gz"
  sha256 "f48f027f820728274a8b48ece287108f1082bbf282c498d0094badc0332c5eba"
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
