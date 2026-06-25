class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.5/lnk_0.1.0-bvgroup.5_darwin_arm64.tar.gz"
      sha256 "b392270061f8a96c22a9b2e081ce68813d7de1b5e958b756b2569c03ec311063"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.5/lnk_0.1.0-bvgroup.5_darwin_amd64.tar.gz"
      sha256 "b0741f462193f00f16fe0ee1c8318c79f4c8277f2ec0ca9c78bbe8ebf8b2ca03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.5/lnk_0.1.0-bvgroup.5_linux_arm64.tar.gz"
      sha256 "b1d529036b7808a00dc4bf6c1686fca55789253744ce1a3a391fce97555e76b5"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.5/lnk_0.1.0-bvgroup.5_linux_amd64.tar.gz"
      sha256 "727c8a680e783eb5c9c28d9fdcae111022ae713b13619b678c2563422815057c"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
