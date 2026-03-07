class TakeoutPhotos < Formula
  desc "Process and organize Google Photos Takeout exports with metadata preservation"
  homepage "https://github.com/diegomarino/takeout-photos"
  version "1.0.3"

  on_arm do
    url "https://github.com/diegomarino/takeout-photos/releases/download/v#{version}/takeout-photos-#{version}-macos-arm64.tar.gz"
    sha256 "38b5cdf4f2e1f653ef1cde7d4a5e31390cfbe08fa4f04120b182c69e6bbae803"
  end

  def install
    bin.install "takeout-photos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/takeout-photos --version")
  end
end
