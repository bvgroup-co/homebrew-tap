class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.3/lnk_0.1.3_darwin_arm64.tar.gz"
      sha256 "85faa2aacb7613046fd18bed79ea293e18aab46318aa05e3c9145ab56c2b3897"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.3/lnk_0.1.3_darwin_amd64.tar.gz"
      sha256 "b51e7baf477a8b6c7f340d0141193a26a4a7e03c44befc800b07eabc6aabb83b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.3/lnk_0.1.3_linux_arm64.tar.gz"
      sha256 "6cca32bb4dc66eb4ab7253154d19cf6a97a40bbf8fa6151bf8210a4730e32a9a"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.3/lnk_0.1.3_linux_amd64.tar.gz"
      sha256 "e2061e47d210a2b6591e6666f3bcfea9289952214d085b022998ad3d9fad7a9f"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
