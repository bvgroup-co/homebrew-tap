class Hfeeds < Formula
  desc "Hacker feeds CLI for GitHub Trending, Hacker News, Product Hunt, Reddit, and V2EX"
  homepage "https://github.com/bvgroup-co/hacker-feeds-go-cli"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/hacker-feeds-go-cli/releases/download/v0.4.4/hfeeds_0.4.4_darwin_arm64.tar.gz"
      sha256 "75ac7c992ad7177a125a95c8736f49ed9cfb0a7c325511d2b7be3d6e66b2f32b"
    else
      url "https://github.com/bvgroup-co/hacker-feeds-go-cli/releases/download/v0.4.4/hfeeds_0.4.4_darwin_amd64.tar.gz"
      sha256 "76ba030defc4ac00208997635303027efc30553c027953fdfec5c50d9a114076"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvgroup-co/hacker-feeds-go-cli/releases/download/v0.4.4/hfeeds_0.4.4_linux_arm64.tar.gz"
      sha256 "7395997385aac07412d99a5020a8b43f895125f80994ab158c314287ce624839"
    elsif Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/bvgroup-co/hacker-feeds-go-cli/releases/download/v0.4.4/hfeeds_0.4.4_linux_amd64.tar.gz"
      sha256 "1c039cae0e387b26d83487bb3341949e534637ac03e59b70b34b5c1267cf9e52"
    else
      odie "hfeeds is only available for 64-bit Linux architectures"
    end
  end

  def install
    bin.install "hfeeds"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hfeeds --version")
    assert_match "hfeeds", shell_output("#{bin}/hfeeds --help")
  end
end
