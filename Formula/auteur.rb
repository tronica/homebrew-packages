class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  version "0.0.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-arm64.tar.gz"
      sha256 "84388c124aecff32fd2615c1271513c4b9009c880475a572b3c39292a70b3c45"

      def install
          bin.install "auteur" => "auteur"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-amd64.tar.gz"
      sha256 "a8df3f82c43ea7a78c4fef582702c43605efd47e7540b9f16144ae73499d798e"

      def install
          bin.install "auteur" => "auteur"
      end
    end
  end

  test do
    system "#{bin}/auteur", "--help"
  end
end
