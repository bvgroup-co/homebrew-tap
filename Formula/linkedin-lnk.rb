class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.12/lnk_0.1.0-bvgroup.12_darwin_arm64.tar.gz"
      sha256 "98bdd4d23fbb86c0068d2216cbc59e1aca7ea5ccbcd7cb466862dc687b90baeb"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.12/lnk_0.1.0-bvgroup.12_darwin_amd64.tar.gz"
      sha256 "7011cac9e4fc4ba88d762f32bed0e4e2f4a006b155b58d59cd3ed4985c65ce01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.12/lnk_0.1.0-bvgroup.12_linux_arm64.tar.gz"
      sha256 "248c75dfebc638df34891be9531fe85e188bfbdfa8f35f29130e3003895db089"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.12/lnk_0.1.0-bvgroup.12_linux_amd64.tar.gz"
      sha256 "390ed0687ba06df87063a3ea7ff987f6352d2194d372e39969818317b484624d"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
