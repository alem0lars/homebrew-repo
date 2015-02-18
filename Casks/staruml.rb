cask :v1 => 'staruml' do

  name 'StarUML'

  homepage 'http://staruml.io'
  license :commercial

  version '2.0.2'
  sha256  'ee7bce6ff8feba9eb42e12c69c70bfc8f40db3ecebccb4cd0603b08865c6688c'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  
  app 'StarUML.app'
  
end
