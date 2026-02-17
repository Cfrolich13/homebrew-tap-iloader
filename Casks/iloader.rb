# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "iloader" do
  version "2.0.0"
  sha256 "93ad3b64310d15fffe8b3814c5c1839aa19a1a88df85fcd9a1b4eca38b4a4522"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/iloader-darwin-universal.dmg"
  name "iloader"
  desc "User friendly sideloader for iOS devices. Install SideStore (or other apps) and import your pairing file with ease."
  homepage "https://iloader.app"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  app "iloader.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
