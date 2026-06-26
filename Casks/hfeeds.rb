cask "hfeeds" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.4"
  sha256 arm:   "75ac7c992ad7177a125a95c8736f49ed9cfb0a7c325511d2b7be3d6e66b2f32b",
         intel: "76ba030defc4ac00208997635303027efc30553c027953fdfec5c50d9a114076"

  url "https://github.com/bvgroup-co/hacker-feeds-go-cli/releases/download/v#{version}/hfeeds_#{version}_darwin_#{arch}.tar.gz"
  name "hfeeds"
  desc "Hacker feeds CLI for GitHub Trending, Hacker News, Product Hunt, Reddit, and V2EX"
  homepage "https://github.com/bvgroup-co/hacker-feeds-go-cli"

  binary "hfeeds"

  test do
    assert_match version.to_s, shell_output("#{bin}/hfeeds --version")
    assert_match "hfeeds", shell_output("#{bin}/hfeeds --help")
  end
end
