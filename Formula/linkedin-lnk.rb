class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.14/lnk_0.1.0-bvgroup.14_darwin_arm64.tar.gz"
      sha256 "13b5157fa4704bc926af140b330452f1b3d8e2d26fc37b77df59234c83a4bae5"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.14/lnk_0.1.0-bvgroup.14_darwin_amd64.tar.gz"
      sha256 "283e4db23b253e44bf9de4a040190138590aa2dbeb6651b4e2235928ae2be689"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.14/lnk_0.1.0-bvgroup.14_linux_arm64.tar.gz"
      sha256 "cb0c4caf71ebb3217a0098f7f007700bb484bf83b37621b9cd653c33f6d1707c"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.14/lnk_0.1.0-bvgroup.14_linux_amd64.tar.gz"
      sha256 "f0a945be7af84b6d06fe0e435230ee61578168cae955211b1990613aec5b0f50"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
