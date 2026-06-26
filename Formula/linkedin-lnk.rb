class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.16/lnk_0.1.0-bvgroup.16_darwin_arm64.tar.gz"
      sha256 "2e6f809d2ddad9e3ea435c32a65a8d7312ea47381f656a778d05867a916a4d56"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.16/lnk_0.1.0-bvgroup.16_darwin_amd64.tar.gz"
      sha256 "921b41439c31d8704148d14a9ad1d11d8fa0571b5383af2402158390a08d811c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.16/lnk_0.1.0-bvgroup.16_linux_arm64.tar.gz"
      sha256 "44a956681227e4844952631608bfbeb92808091791f7f2b011acdea260d3a7fb"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.16/lnk_0.1.0-bvgroup.16_linux_amd64.tar.gz"
      sha256 "eb838b26152d346078f92235092950201f6cec8f07448d3b5bfed269c345c83c"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
