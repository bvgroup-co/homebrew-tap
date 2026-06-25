class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.3/lnk_0.1.0-bvgroup.3_darwin_arm64.tar.gz"
      sha256 "04824fff6f6c67bb8fa3204cff3213cb5499216f3101e5cd6533fbf65a23a069"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.3/lnk_0.1.0-bvgroup.3_darwin_amd64.tar.gz"
      sha256 "61f601554fc97712312cde9a47818dee4b317503cd74708892ddf2a2454fac44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.3/lnk_0.1.0-bvgroup.3_linux_arm64.tar.gz"
      sha256 "1da8cc541f2d04fbda25f908e994abf1f8f71ac0d30df87fd0f2a8fb7c9f7eb9"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.3/lnk_0.1.0-bvgroup.3_linux_amd64.tar.gz"
      sha256 "78b2849f6eda6d1f2920d6afbc0968322411134bdd49ba543e422eecd5fa86ad"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
