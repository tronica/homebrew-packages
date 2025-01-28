class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  url "https://github.com/patrixr/auteur/archive/refs/tags/v0.0.17.tar.gz"
  sha256 "af46282c608f7c2fdd5fdd911ab38b69e7d5c1db74aaeca72a34651babf5b9d1"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  depends_on "go" => :build


  def install
    cd buildpath do
      # Install Go dependencies
      system "make", "tidy"

      # Build and install auteur
      system "make", "build"
      bin.install "out/auteur"
    end
  end

  test do
    system "#{bin}/auteur", "--help"
  end
end
