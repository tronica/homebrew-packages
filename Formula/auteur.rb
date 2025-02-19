class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  version "0.0.23"

  # Checksum command
  # curl -L https://github.com/patrixr/auteur/releases/download/v0.0.23/auteur-v0.0.23-darwin-arm64.tar.gz | shasum -a 256

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-arm64.tar.gz"
      sha256 "0ef0bc8670e8abf0a3f6d8e13fa4c7d3bf29c1cbd61f38132f33682722476b8c"

      def install
        bin.install "auteur" => "auteur"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-amd64.tar.gz"
      sha256 "ced6505dfcc415b37c227981979a08d9a3f6bba999f335d3aa2211a23e4e225d"

      def install
        bin.install "auteur" => "auteur"
      end
    end
  end

  test do
    system "#{bin}/auteur", "--help"
  end
end
