class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.4/lnk_0.1.0-bvgroup.4_darwin_arm64.tar.gz"
      sha256 "7e552b02d035450f132f7ec7f3a6a278ebda29e37cc6350de92c568af076dc3f"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.4/lnk_0.1.0-bvgroup.4_darwin_amd64.tar.gz"
      sha256 "65de2455010637a98ed2c21276dbbaa75f82ec8560c8e5bf44435802b7877073"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.4/lnk_0.1.0-bvgroup.4_linux_arm64.tar.gz"
      sha256 "b4e2edd17db328e777c437862f998fd0f366c9ff11b5b34df9a7fd4657c314bf"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.4/lnk_0.1.0-bvgroup.4_linux_amd64.tar.gz"
      sha256 "0523fd1a1472fa462add0f4080f2f49f28dd148ee034ede2a91cb5b6aa81b0e2"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
