require 'formula'

class Fqzcomp < Formula
  homepage 'https://sourceforge.net/projects/fqzcomp/'
  #doi '10.1371/journal.pone.0059190'
  #tag 'bioinformatics'
  url 'https://downloads.sourceforge.net/project/fqzcomp/fqzcomp-4.6.tar.gz'
  sha1 'fa5554747f1d49d1ae2303d6302822416bc318b3'

  bottle do
    cellar :any
    sha256 "0881cb14d38d9332f38fbce082468ac1276e9d82ca5ac5d99e4473420079d8b5" => :yosemite
    sha256 "ea9897a175a698b9bee04613af8a76f980c0b0e65ae8e755c6a40b3fd85ef0fc" => :mavericks
    sha256 "6fbd97cc5f69d03805e703ed1f6a9b2d49f9eccf8afa8955368a5f45fd9f32f4" => :mountain_lion
  end

  def install
    system "make"
    bin.install 'fqz_comp'
    doc.install 'README'
  end

  test do
    system "#{bin}/fqz_comp -h"
  end
end
