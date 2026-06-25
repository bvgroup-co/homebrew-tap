class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.8/lnk_0.1.0-bvgroup.8_darwin_arm64.tar.gz"
      sha256 "91d959a1f5e4bebda85859652fc43b94a6c2bc059017922c32d186c21fd962d5"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.8/lnk_0.1.0-bvgroup.8_darwin_amd64.tar.gz"
      sha256 "0cb82020114ebdb840bb64d18a6944f4be1bc4c841ca30c67c5e33b5d93601ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.8/lnk_0.1.0-bvgroup.8_linux_arm64.tar.gz"
      sha256 "bed484d4cebe603c4a133b04948d6b310fd9b2722debac41b69a1cb53652ec6b"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.8/lnk_0.1.0-bvgroup.8_linux_amd64.tar.gz"
      sha256 "778bbc0ff8dcb4088d50f959b21742f55b7389c35c5d17ad2d3526ca2a49fbe6"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
