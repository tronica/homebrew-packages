class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  version "0.0.25"

  # Checksum command
  # curl -L https://github.com/patrixr/auteur/releases/download/v0.0.23/auteur-v0.0.23-darwin-arm64.tar.gz | shasum -a 256

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-arm64.tar.gz"
      sha256 "7552d98608dcae3d64a4f7ff38db4006e9994714f0fe022cca8629b533fdd965"

      def install
        bin.install "auteur" => "auteur"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-amd64.tar.gz"
      sha256 "0fddd58ccd8a40e840c19fd5129e31cd3705206ffbe50cf2b4fae30a8c65ede2"

      def install
        bin.install "auteur" => "auteur"
      end
    end
  end

  test do
    system "#{bin}/auteur", "--help"
  end
end
