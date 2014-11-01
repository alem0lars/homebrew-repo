require "formula"

class Aewan < Formula
  homepage "http://aewan.sourceforge.net/"
  url      "http://downloads.sourceforge.net/project/aewan/aewan/aewan-1.0.01/aewan-1.0.01.tar.gz?r=http%3A%2F%2Faewan.sourceforge.net%2Fdownload.html&ts=1414840485&use_mirror=kent"
  sha1     "f6d88ed6ba5d851b6ce6fb2f093ddc3b8a07ca03"
  version  "1.0.01"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "CC=#{ENV.cc}", "CFLAGS=#{ENV.cflags}", "LDFLAGS=#{ENV.ldflags}"
    system "make install"
  end
end
