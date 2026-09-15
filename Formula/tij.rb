class Tij < Formula
  desc "Text-mode Interface for Jujutsu version control system"
  homepage "https://github.com/nakamura-shuta/tij"
  url "https://github.com/nakamura-shuta/tij/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "36a4bc416e42bd59f845643cf719ba92afb915cdb8840214ff0abcc4f69da093"
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
