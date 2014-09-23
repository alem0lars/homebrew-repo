require 'formula'


class Antigen < Formula
  homepage 'https://github.com/zsh-users/antigen'
  url      'https://github.com/zsh-users/antigen/archive/v1.tar.gz'
  sha1     'df5449d100d60b1a72d186ed2718cfe8560d2153'
  version  '1'
  head     'https://github.com/zsh-users/antigen.git', using: :git, tag: 'v1'

  test do
    system 'antigen', '-h'
  end

end
