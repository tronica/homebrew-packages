class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  version "0.0.24"

  # Checksum command
  # curl -L https://github.com/patrixr/auteur/releases/download/v0.0.23/auteur-v0.0.23-darwin-arm64.tar.gz | shasum -a 256

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-arm64.tar.gz"
      sha256 "e97760178424e0bc2cddcf896414439bcc4f8883ed85694da36f1bb05d5662ee"

      def install
        bin.install "auteur" => "auteur"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-amd64.tar.gz"
      sha256 "d2b2775296b6749b66e3d39baa531ebb03b44b6cc961ced415bd414fe57a46fe"

      def install
        bin.install "auteur" => "auteur"
      end
    end
  end

  test do
    system "#{bin}/auteur", "--help"
  end
end
