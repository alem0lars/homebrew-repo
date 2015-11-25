require 'formula'


class Fizzy < Formula
  homepage 'https://github.com/alem0lars/fizzy'
  url      'https://github.com/alem0lars/fizzy/archive/1.7.0.tar.gz'
  sha256   '50dd0275db2bb9bbc4255a11b45ee8f699690018b03dfc1162618923cc44b6e3'
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
