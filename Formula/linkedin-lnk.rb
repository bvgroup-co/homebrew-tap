class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.6/lnk_0.1.0-bvgroup.6_darwin_arm64.tar.gz"
      sha256 "605492d4616115d11d2fcd85a39c35d35eb76da4562a56c97326a0c749906b85"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.6/lnk_0.1.0-bvgroup.6_darwin_amd64.tar.gz"
      sha256 "c714a3037b7a6f067de829ed8b2caf817ca6d7cc207d89b8ef01bcf68645e3b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.6/lnk_0.1.0-bvgroup.6_linux_arm64.tar.gz"
      sha256 "5fba4eccc19d41ac47765221076f35bee36c41c41c14c7af146bd1bed61a3a99"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.6/lnk_0.1.0-bvgroup.6_linux_amd64.tar.gz"
      sha256 "279f791acc338df43a4b80c718ac9652ed3fb80ca830fc888b9f1c147783b606"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
