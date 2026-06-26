class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.13/lnk_0.1.0-bvgroup.13_darwin_arm64.tar.gz"
      sha256 "752d7b3f67a81642beeff69e379af1c6e204646ccd10d93b205d2ba2e416072b"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.13/lnk_0.1.0-bvgroup.13_darwin_amd64.tar.gz"
      sha256 "4da0e2634668b32bb17b1371728e61edf1c8b00baaa7014cf28bca0202c4e1df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.13/lnk_0.1.0-bvgroup.13_linux_arm64.tar.gz"
      sha256 "70b0114b05fb79055d5ad2ced5da5d767e73abfc0702c4cc70c74f2e5eebaac1"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.13/lnk_0.1.0-bvgroup.13_linux_amd64.tar.gz"
      sha256 "f34cfb3c012b4c82ad085d416db3cb61e92186fe511f0e3f8463e672f88bd587"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
