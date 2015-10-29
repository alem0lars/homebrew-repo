require 'formula'


class Fizzy < Formula
  homepage 'https://github.com/alem0lars/fizzy'
  url      'https://github.com/alem0lars/fizzy/archive/1.5.0.tar.gz'
  sha256   'bb0737340c0926c2e1a5947d74e7eebec0f9e21ef4a0f6111a228e973d4149d6'
  version  '1.5.0'
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
