class TakeoutPhotos < Formula
  desc "Process and organize Google Photos Takeout exports with metadata preservation"
  homepage "https://github.com/diegomarino/takeout-photos"
  version "1.0.4"

  on_arm do
    url "https://github.com/diegomarino/takeout-photos/releases/download/v#{version}/takeout-photos-#{version}-macos-arm64.tar.gz"
    sha256 "1e372bc74d2a232d4fa9faf8903ceed40c970a0b763da5e52493dfa500a06279"
  end

  def install
    bin.install "takeout-photos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/takeout-photos --version")
  end
end
