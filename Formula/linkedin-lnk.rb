class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.15/lnk_0.1.0-bvgroup.15_darwin_arm64.tar.gz"
      sha256 "e867c5ac0ba88f49c4308292e9f951dea5e4d4c9a56a09fecccfae499d64b5f2"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.15/lnk_0.1.0-bvgroup.15_darwin_amd64.tar.gz"
      sha256 "b2e730d6dec7455a2dfe7948b9cf7349f091b7f51117228fbb3fa7aeaff734fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.15/lnk_0.1.0-bvgroup.15_linux_arm64.tar.gz"
      sha256 "b4e94b7e23c72d5c164c2ad95eadddd3a54fa687eb98c5c2479eea16974b6acf"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.15/lnk_0.1.0-bvgroup.15_linux_amd64.tar.gz"
      sha256 "330451dac8c4e7c087cc2077928fd1564fe43a50e9c4ce5941651b9617e6e8bd"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
