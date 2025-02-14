class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  version "0.0.21"

  # Checksum command
  # curl -L https://github.com/patrixr/auteur/releases/download/v0.0.X/auteur-v0.0.X-darwin-arm64.tar.gz | shasum -a 256

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-arm64.tar.gz"
      sha256 "f6a8133dc7a61bb80dc99f0cdcac13a53754e1f5bb8683257521ffacf964c446"

      def install
          bin.install "auteur" => "auteur"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-amd64.tar.gz"
      sha256 "8f4d04f596109ba75805d58ff5e9483834d9b05ec9ba900bdb22cbc42479f967"

      def install
          bin.install "auteur" => "auteur"
      end
    end
  end

  test do
    system "#{bin}/auteur", "--help"
  end
end
