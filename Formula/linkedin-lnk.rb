class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.1/lnk_0.1.1_darwin_arm64.tar.gz"
      sha256 "b9d4dba54582ad7bb7b26cad261e66b418d337a12e93afc40df6d7fd18f701eb"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.1/lnk_0.1.1_darwin_amd64.tar.gz"
      sha256 "57c4e88e926d732ddd56c075c5dbe2a1b05a74560ee950ca1f82cb9fd42558eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.1/lnk_0.1.1_linux_arm64.tar.gz"
      sha256 "18217b541a9d0e80fc25da3b9f2f0a02a6f8e992c5286f05305d39163fc2d8db"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.1/lnk_0.1.1_linux_amd64.tar.gz"
      sha256 "c4a453d427a033d09fe068f4cb30d3b89f7e56be4c3ddff8920893805b094e6b"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
