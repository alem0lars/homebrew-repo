require "formula"


csd_vers = "1.0.0"
dest_dir_pth = "~/Library/Application\ Support/Colloquy/Styles"


class ColloquyStyleDarcula < Formula

  version csd_vers
  
  homepage "https://github.com/alem0lars/colloquy-style-darcula"
  head "https://github.com/alem0lars/colloquy-style-darcula.git", using: :git, tag: "v#{csd_vers}"
  url "https://github.com/alem0lars/colloquy-style-darcula/archive/v#{csd_vers}.zip"
  md5 "60c38f5c8f3b428c94a1a214fc668f70"

  def install
    system "mkdir -p #{dest_dir_pth}"
    system "cp -r ./src/*.colloquyStyle #{dest_dir_pth}"
  end
  
end
