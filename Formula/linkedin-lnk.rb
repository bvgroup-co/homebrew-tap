class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.7/lnk_0.1.0-bvgroup.7_darwin_arm64.tar.gz"
      sha256 "e7f58d8aef2eb64219a2c727f7cc289a5a88efec9e96328a2b91b5b4d9e837a3"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.7/lnk_0.1.0-bvgroup.7_darwin_amd64.tar.gz"
      sha256 "ea1e55b39940655461b7ba3d9d60f3d711e476511ad165bcf719321cd9064459"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.7/lnk_0.1.0-bvgroup.7_linux_arm64.tar.gz"
      sha256 "7076b100a8d3f22869d64fdaf2b4c0c59abbb24a9437978caea70b6b2f2688a5"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.7/lnk_0.1.0-bvgroup.7_linux_amd64.tar.gz"
      sha256 "e4a52a4c44e18dbf994202f437f3a6d46e9f5fb9afa4cf543f050e4980f4550f"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
