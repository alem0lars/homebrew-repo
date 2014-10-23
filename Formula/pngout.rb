require "formula"


class Pngout < Formula
  homepage "http://www.advsys.net/ken/util/pngout.htm"
  url "http://static.jonof.id.au/dl/kenutils/pngout-20130221-darwin.tar.gz"
  sha1 "b171acb6f40bba8e31474857c6cbd3b5dd30b272"

  def install
    bin.install "pngout"
  end

  def caveats; <<-EOS.undent
    We agreed to the PNGOUT license for you.
    If this is unacceptable you should uninstall.

    License information at:
    http://advsys.net/ken/utils.htm#pngoutkziplicense
    EOS
  end
end
