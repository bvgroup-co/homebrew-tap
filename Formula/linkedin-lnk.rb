class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.2/lnk_0.1.2_darwin_arm64.tar.gz"
      sha256 "59c807491936e3ecb3e2ab4c9ae8539667802482f45bd95f030355ef0ad29eb0"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.2/lnk_0.1.2_darwin_amd64.tar.gz"
      sha256 "56187e7d54bc7adb1e5a731014509dc45f0211d5ec9774d8239516de101c8612"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.2/lnk_0.1.2_linux_arm64.tar.gz"
      sha256 "d39bf8226140479f118241f4472315b1b04311a4bad3e1c2900b146a16012d45"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.2/lnk_0.1.2_linux_amd64.tar.gz"
      sha256 "cb666f1620ba9785cc461016cd3c52112eae88278ac58f7a88c1ab1ba7c8b186"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
