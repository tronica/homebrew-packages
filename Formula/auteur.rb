class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  version "0.0.17"


  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-arm64.tar.gz"
      sha256 "e6cc596eddec67fc6c2dd98a019b96986d2933560e4f4f362dc73593ee624ddf"

      def install
          bin.install "auteur" => "auteur"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-amd64.tar.gz"
      sha256 "9a89a0749dfa376e01a720535610ed5cc12d72e2ab243f3b33cda4579413b94a"

      def install
          bin.install "auteur" => "auteur"
      end
    end
  end


  test do
    system "#{bin}/auteur", "--help"
  end
end
