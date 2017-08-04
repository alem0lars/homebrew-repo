require 'formula'


class Fizzy < Formula
  homepage 'https://github.com/alem0lars/fizzy'
  url      'https://github.com/alem0lars/fizzy/archive/v2.3.2.tar.gz'
  sha256   '8dfcca494a7d0bf067ba50953dd70470cd4a423e9ff6515243e5c8520fd0c486'
  version  '2.3.2'
  head     'https://github.com/alem0lars/fizzy.git', using: :git

  test do
    system bin/'build/fizzy', 'help'
  end

  def install
    prefix.install 'build/fizzy'
    fizzy = prefix + 'fizzy'

    fizzy.chmod 0755
    bin.install_symlink fizzy
  end

end
