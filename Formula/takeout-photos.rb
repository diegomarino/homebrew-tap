class TakeoutPhotos < Formula
  desc "Process and organize Google Photos Takeout exports with metadata preservation"
  homepage "https://github.com/diegomarino/takeout-photos"
  version "1.0.1"

  on_arm do
    url "https://github.com/diegomarino/takeout-photos/releases/download/v#{version}/takeout-photos-#{version}-macos-arm64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "takeout-photos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/takeout-photos --version")
  end
end
