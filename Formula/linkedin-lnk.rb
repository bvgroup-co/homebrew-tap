class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.9/lnk_0.1.0-bvgroup.9_darwin_arm64.tar.gz"
      sha256 "07f35ce165fd4c2e29f1ad486b16344cd5716c341fc2b317d6313f36aed8479c"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.9/lnk_0.1.0-bvgroup.9_darwin_amd64.tar.gz"
      sha256 "0c4fb6f65b7c1f66e6fbfa5484499d696bcd4e750a3bd345fd155302d1a69171"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.9/lnk_0.1.0-bvgroup.9_linux_arm64.tar.gz"
      sha256 "9f39d20ebf84a95b2e5e9e32e1fc2c92aca863bfddbdd073d55028cbf10f7398"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.9/lnk_0.1.0-bvgroup.9_linux_amd64.tar.gz"
      sha256 "0bade8fa5640917b9fe0b3dba4027a535b27294bd5f5c914155dcdd7694f51a3"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
