require 'formula'


class Antigen < Formula
  homepage 'https://github.com/zsh-users/antigen'
  url      'https://github.com/zsh-users/antigen/archive/v1.tar.gz'
  sha1     '8132263205612633791c955a530ea8891d15bfba'
  version  '1'
  head     'https://github.com/zsh-users/antigen.git', using: :git, tag: 'v1'

  test do
    system 'antigen', '-h'
  end

end
