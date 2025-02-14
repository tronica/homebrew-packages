class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  version "0.0.22"

  # Checksum command
  # curl -L https://github.com/patrixr/auteur/releases/download/v0.0.X/auteur-v0.0.X-darwin-arm64.tar.gz | shasum -a 256

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-arm64.tar.gz"
      sha256 "db504972945ff4b9b3533bc5ecca4f64d94a044575b01e5b84103ad5631ec685"

      def install
          bin.install "auteur" => "auteur"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-amd64.tar.gz"
      sha256 "6cc8c26d2f178874fc4d15b481f01fa9339ab1ead25ec75da0bae822f9722e6e"

      def install
          bin.install "auteur" => "auteur"
      end
    end
  end

  test do
    system "#{bin}/auteur", "--help"
  end
end
