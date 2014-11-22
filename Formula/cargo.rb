require "formula"

class Cargo < Formula
  homepage "http://crates.io"
  url "https://github.com/rust-lang/cargo/archive/master.tar.gz"
  version "latest"
  head "https://github.com/rust-lang/cargo.git", using: :git
  sha1 "afe9b5ed054f04304209e211d62fa1063310cb9d"

  depends_on "rust"

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
