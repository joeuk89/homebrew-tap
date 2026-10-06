class Mootd < Formula
  desc "AI-written terminal greetings: topical jokes and colour text art"
  homepage "https://github.com/joeuk89/mootd"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/joeuk89/mootd/releases/download/v0.1.0/mootd_0.1.0_darwin_arm64.tar.gz"
      sha256 "f235ac74faa87811a4aa95c942422cc061163f52bf5e7b5ed9de6294bb7d43f7"
    end
    on_intel do
      url "https://github.com/joeuk89/mootd/releases/download/v0.1.0/mootd_0.1.0_darwin_amd64.tar.gz"
      sha256 "b491ac494be28a1498c5cf2575e9030d0c7f37f29e7402be7d0f27522f666d1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/joeuk89/mootd/releases/download/v0.1.0/mootd_0.1.0_linux_arm64.tar.gz"
      sha256 "4a906107a149be9cb7b5d9d93864c97d71ce9bd9ce0abf44cb37faad1a09b4a2"
    end
    on_intel do
      url "https://github.com/joeuk89/mootd/releases/download/v0.1.0/mootd_0.1.0_linux_amd64.tar.gz"
      sha256 "c379ae80675d2a2a049bf1fa3d5a4f37ed0d1cd33abb58251bb7eb0f9b8f14dd"
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
