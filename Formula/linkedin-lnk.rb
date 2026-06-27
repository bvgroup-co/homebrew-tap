class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.19/lnk_0.1.0-bvgroup.19_darwin_arm64.tar.gz"
      sha256 "cd5216264dc1d8a74231eb19c3ac13e97344e662f34d71a527c3741d9049a429"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.19/lnk_0.1.0-bvgroup.19_darwin_amd64.tar.gz"
      sha256 "c1e32a3ed5caf79f550a9a5d304bf5e06c07c2ac319454afc106ce9d44b59004"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.19/lnk_0.1.0-bvgroup.19_linux_arm64.tar.gz"
      sha256 "3fe7bbc14e24a189e368320b0bfd155c6f51f76508d6b7e84317f177a15d79bd"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.19/lnk_0.1.0-bvgroup.19_linux_amd64.tar.gz"
      sha256 "ad7c22c5fe5b77a4bf8ab3dd835fab3cea3bc108cac7f8ba2853d7213b87ce0d"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
