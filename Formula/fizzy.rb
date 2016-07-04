require 'formula'


class Fizzy < Formula
  homepage 'https://github.com/alem0lars/fizzy'
  url      'https://github.com/alem0lars/fizzy/archive/v2.2.0.tar.gz'
  sha256   '6254cd4bbf939bf9a0fa43a56879bacba062b7a79450d1f245ea722566c5bedf'
  version  '2.2.0'
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
