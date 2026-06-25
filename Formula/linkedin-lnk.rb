class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.2/lnk_0.1.0-bvgroup.2_darwin_arm64.tar.gz"
      sha256 "1f34fe3912e5da44b81742644ffc8a46d4bed35f465193af048629a51eccf94a"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.2/lnk_0.1.0-bvgroup.2_darwin_amd64.tar.gz"
      sha256 "8784dce0d6100327cfe3f589426415e651bc88a17a936f66b9015497c57f22a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.2/lnk_0.1.0-bvgroup.2_linux_arm64.tar.gz"
      sha256 "8311aff205d1f83dc8934839edf5ee463c96efca37f30f7af54eeb7b4827f955"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.2/lnk_0.1.0-bvgroup.2_linux_amd64.tar.gz"
      sha256 "6b19c7ff5df5b1ad62f1f7defeafb46082ec3684af05fdc0480ebc6155cb04b2"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
