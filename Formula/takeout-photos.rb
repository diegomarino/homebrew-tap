class TakeoutPhotos < Formula
  desc "Process and organize Google Photos Takeout exports with metadata preservation"
  homepage "https://github.com/diegomarino/takeout-photos"
  version "1.1.0"

  on_arm do
    url "https://github.com/diegomarino/takeout-photos/releases/download/v#{version}/takeout-photos-#{version}-macos-arm64.tar.gz"
    sha256 "d3a147145dfc01e1b86d3d1715a87bb9452e544615a777af1cb119c1eb5a3fd8"
  end

  def install
    bin.install "takeout-photos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/takeout-photos --version")
  end
end
