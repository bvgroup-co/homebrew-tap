class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.11/lnk_0.1.0-bvgroup.11_darwin_arm64.tar.gz"
      sha256 "0553eaed107b7c721462ade7c7172d08f7cc68c4c5483fff5d62b11f5143bb63"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.11/lnk_0.1.0-bvgroup.11_darwin_amd64.tar.gz"
      sha256 "2eb938c02201acfc6e7e7aeb3a3bbe89f00d219e9cbec6c7b6b0e9245282110c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.11/lnk_0.1.0-bvgroup.11_linux_arm64.tar.gz"
      sha256 "05a130766e060d2d1e887f58a0c5f91692c3f48380181df0ffc5d7ec0db017d3"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.11/lnk_0.1.0-bvgroup.11_linux_amd64.tar.gz"
      sha256 "4a3466e1114160e1d460f13bf491881510cc968ff3418d1a5bdedcc07b3e40c9"
    end
  end

  def install
    binary = if OS.mac?
      Hardware::CPU.arm? ? "lnk_darwin_arm64" : "lnk_darwin_amd64"
    else
      Hardware::CPU.arm? ? "lnk_linux_arm64" : "lnk_linux_amd64"
    end

    bin.install binary => "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
