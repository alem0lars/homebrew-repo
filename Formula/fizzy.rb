require 'formula'


class Fizzy < Formula
  homepage 'https://github.com/alem0lars/fizzy'
  url      'https://github.com/alem0lars/fizzy/archive/1.7.0.tar.gz'
  sha256   'c318f9af7fe066f9b2ab40800ce0bb9d5e32f52e80ed8dcfa92c643d65f26648'
  version  '1.7.0'
  head     'https://github.com/alem0lars/fizzy.git', using: :git

  test do
    system bin/'fizzy', 'help'
  end

  def install
    prefix.install 'fizzy'
    fizzy = prefix + 'fizzy'

    fizzy.chmod 0755
    bin.install_symlink fizzy
  end

end
