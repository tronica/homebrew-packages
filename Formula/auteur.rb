class Auteur < Formula
  desc "Static page generator"
  homepage "https://auteur.tronica.io"
  license "NOASSERTION"
  head "https://github.com/patrixr/auteur.git"
  version "0.0.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-arm64.tar.gz"
      sha256 "23f8f2278d3e9cfff40f029eb9822b4770914f424399ee8e832454877aff41f8"

      def install
          bin.install "auteur" => "auteur"
      end
    end

    if Hardware::CPU.intel?
      url "https://github.com/patrixr/auteur/releases/download/v#{version}/auteur-v#{version}-darwin-amd64.tar.gz"
      sha256 "85fa3da59cde17bef5041c0281db556a76ce47663b98a065ae1c2d26e7633184"

      def install
          bin.install "auteur" => "auteur"
      end
    end
  end

  test do
    system "#{bin}/auteur", "--help"
  end
end
