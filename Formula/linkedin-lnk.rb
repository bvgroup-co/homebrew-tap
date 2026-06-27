class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.20/lnk_0.1.0-bvgroup.20_darwin_arm64.tar.gz"
      sha256 "c34f2a06b62d6248487e491e3ee8e0b8abdb39239af385200d99c771a06d0f04"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.20/lnk_0.1.0-bvgroup.20_darwin_amd64.tar.gz"
      sha256 "7b89c9689a03dcb123b265ec2658aa81bc580bb7571c0262dd70d57be0357986"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.20/lnk_0.1.0-bvgroup.20_linux_arm64.tar.gz"
      sha256 "e45547d7dd3782f6dafc1995c8759acbac8a6449c1ff0360e554491a37fdfb56"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.20/lnk_0.1.0-bvgroup.20_linux_amd64.tar.gz"
      sha256 "476705663b102f08f3ed84e06a63eaef823381d5562ff8baa8eaf0e69e7a069e"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
