class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.22/lnk_0.1.0-bvgroup.22_darwin_arm64.tar.gz"
      sha256 "78ed083a5cc89044f213a850dd09c88aa93cff1bf4908c47b17b04376efb968a"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.22/lnk_0.1.0-bvgroup.22_darwin_amd64.tar.gz"
      sha256 "8c24eba60e2538d3d773fed6502cd3019a5ad3ad0943bd670cae9688fc1b0b80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.22/lnk_0.1.0-bvgroup.22_linux_arm64.tar.gz"
      sha256 "2514628089453b0c2665b64521148dff8b0ebf959511f850626d4758d37278b1"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.22/lnk_0.1.0-bvgroup.22_linux_amd64.tar.gz"
      sha256 "10de1881df5e278b4f394cfa3b0d7e0e853f464da9414e7be47a2ee27ab4f410"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
