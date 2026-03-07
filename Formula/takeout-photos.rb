class TakeoutPhotos < Formula
  desc "Process and organize Google Photos Takeout exports with metadata preservation"
  homepage "https://github.com/diegomarino/takeout-photos"
  version "1.0.2"

  on_arm do
    url "https://github.com/diegomarino/takeout-photos/releases/download/v#{version}/takeout-photos-#{version}-macos-arm64.tar.gz"
    sha256 "1b93c4ce0b00d0753fd66d93e77eebd161bd12fa3e7f1d28a97a279f2020c8cd"
  end

  def install
    bin.install "takeout-photos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/takeout-photos --version")
  end
end
