class Mootd < Formula
  desc "AI-written terminal greetings: topical jokes and colour text art"
  homepage "https://github.com/joeuk89/mootd"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joeuk89/mootd/releases/download/v0.1.1/mootd_0.1.1_darwin_arm64.tar.gz"
      sha256 "2351ee62a30d6c505ef1ba802330e817d2ffa24af911d7df41c38bcd4493fb52"
    end
    on_intel do
      url "https://github.com/joeuk89/mootd/releases/download/v0.1.1/mootd_0.1.1_darwin_amd64.tar.gz"
      sha256 "be5fa4f681d58559a8112d1b7d761231d9fd0fda62c0006541d6f23d1ca0d67c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joeuk89/mootd/releases/download/v0.1.1/mootd_0.1.1_linux_arm64.tar.gz"
      sha256 "328704dcb768a40acf7b602c57f3d9f8e0afcf22f0b1298790b64229ba4addf6"
    end
    on_intel do
      url "https://github.com/joeuk89/mootd/releases/download/v0.1.1/mootd_0.1.1_linux_amd64.tar.gz"
      sha256 "9af9e2a8177aa435ba6d9384ec5ba0cdf77ada845748110d21900a7d3619674d"
    end
  end

  def install
    bin.install "mootd"
  end

  def caveats
    <<~EOS
      Run this once to set mootd up:
        mootd init
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mootd version")
  end
end
