class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.4/lnk_0.1.4_darwin_arm64.tar.gz"
      sha256 "0220e350fb6624955de3ea252c4c49fd224aeb028f858b8f1daa3305dafd14e6"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.4/lnk_0.1.4_darwin_amd64.tar.gz"
      sha256 "b607ac49e31ab7dde504572b8d444bdf74e335fcb88f54ef8852938899ceac93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.4/lnk_0.1.4_linux_arm64.tar.gz"
      sha256 "ead711132af13e028f696a2691a4826cf9c16a741e77b9c31a81b58c69080f8b"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.4/lnk_0.1.4_linux_amd64.tar.gz"
      sha256 "6c9b0145485c7ef02e95906779d14e28309abd0ff6a81041ddabfb860f4b4587"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
