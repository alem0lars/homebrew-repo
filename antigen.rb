require 'formula'


class Boris < Formula
  homepage 'https://github.com/zsh-users/antigen'
  url      'https://github.com/zsh-users/antigen/archive/v1.tar.gz'
  sha1     'df5449d100d60b1a72d186ed2718cfe8560d2153'
  version  '1'
  head     'https://github.com/zsh-users/antigen.git'

  def install
    libexec.install "v1.tar.gz"
  end

  test do
    system 'antigen', '-h'
  end

end
