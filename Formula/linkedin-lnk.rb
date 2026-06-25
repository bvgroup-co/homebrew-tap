class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.10/lnk_0.1.0-bvgroup.10_darwin_arm64.tar.gz"
      sha256 "b3a10866f5d59b18eae26887619965433f162ab59347249cf03d7beb480230a4"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.10/lnk_0.1.0-bvgroup.10_darwin_amd64.tar.gz"
      sha256 "f280dfaae58ed6ee4af85325491144b88941ba1d1a9489308a0b096b8ab20559"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.10/lnk_0.1.0-bvgroup.10_linux_arm64.tar.gz"
      sha256 "2edde67f88fb082e817f351fa84e652a129609325f61647216f59e089d202d6e"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.10/lnk_0.1.0-bvgroup.10_linux_amd64.tar.gz"
      sha256 "f9ea3829e007b35f36304fdb87d9663d981001639c48cf3155bd913e4230cca1"
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
