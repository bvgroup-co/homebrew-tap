class Lnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.1/lnk_0.1.0-bvgroup.1_darwin_arm64.tar.gz"
      sha256 "ab2ecc4db3a56e9aa1132056be6fb93b17544a4b20f86a48fdb18f333fafb26b"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.1/lnk_0.1.0-bvgroup.1_darwin_amd64.tar.gz"
      sha256 "51ec41f7879a64230642a7ce89f162aca7b67a570ca4a28abe90f41aebd40d10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.1/lnk_0.1.0-bvgroup.1_linux_arm64.tar.gz"
      sha256 "292b28ba4b7767b8a9b2d6e40b7f60c11c4373c4b693fa53e503860b1bb86498"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.1/lnk_0.1.0-bvgroup.1_linux_amd64.tar.gz"
      sha256 "456588fdf2bb7bc7c065588228ea2b3cc58fae5fc544feb56a59dbf6997bc4bd"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
