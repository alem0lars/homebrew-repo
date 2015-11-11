require 'formula'


class Fizzy < Formula
  homepage 'https://github.com/alem0lars/fizzy'
  url      'https://github.com/alem0lars/fizzy/archive/1.6.0.tar.gz'
  sha256   '5e1b50a69ea5cfb3c8f6fd93e45484e21bc3a0859a56ee3f104952292a56f8d8'
  version  '1.6.0'
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
