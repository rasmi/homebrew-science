class Poa < Formula
  homepage "https://sourceforge.net/projects/poamsa/"
  # doi "10.1093/bioinformatics/18.3.452"
  # tag "bioinformatics"

  url "https://downloads.sourceforge.net/project/poamsa/poamsa/2.0/poaV2.tar.gz"
  version "2.0"
  sha1 "57f863956736498dd76afb57967036bf92c6d599"

  bottle do
    cellar :any
    sha256 "ec70c14a392872c08ff2fd60e454dc05d76eb6edbd49ba8e8a011a6fce5c91b4" => :yosemite
    sha256 "223fd7362babcb755d3eedd60efde918351b8a304579ee50aa43f2d5734240e5" => :mavericks
    sha256 "fec2b793c9313bb5a373f38b7cc30906030bbc6bb7b111a659220153e874e39b" => :mountain_lion
  end

  def install
    system "make", "poa"
    bin.install "poa", "make_pscores.pl"
    doc.install "README"
    lib.install "liblpo.a"
    prefix.install "blosum80.mat", "blosum80_trunc.mat", "multidom.pscore", "multidom.seq"
    (include/"poa").install Dir["*.h"]
  end

  test do
    assert_match "poa", shell_output("#{bin}/poa 2>&1", 255)
  end
end
