class LinkedinLnk < Formula
  desc "Fast LinkedIn CLI for posting, reading, and messaging"
  homepage "https://github.com/bvgroup-co/lnk"
  version "0.1.0-bvgroup.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.23/lnk_0.1.0-bvgroup.23_darwin_arm64.tar.gz"
      sha256 "f458a9e6b476fbc261067861258329f6960dcf7070294e194d52dbc5b901ca6e"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.23/lnk_0.1.0-bvgroup.23_darwin_amd64.tar.gz"
      sha256 "3cad423d3178192cb475419c60c700c36863c95112f0b3a8e2f8c469354bd4fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.23/lnk_0.1.0-bvgroup.23_linux_arm64.tar.gz"
      sha256 "528de4878ab93b0c14df1cc57c7130184c0ac51402620b2e8d1ce5d3de709141"
    else
      url "https://github.com/bvgroup-co/lnk/releases/download/v0.1.0-bvgroup.23/lnk_0.1.0-bvgroup.23_linux_amd64.tar.gz"
      sha256 "24e900a23d39e6cf492d7730281092c732df9b6bc238f289baf2c533a64ee740"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    system "#{bin}/lnk", "--version"
  end
end
