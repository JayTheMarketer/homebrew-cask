cask "zettlr" do
  version "1.7.3"
  sha256 "c6c505447b51f1ee4d66e3c42ebcb7d5f3e5f33b76d748e437da302ae53296f3"

  # github.com/Zettlr/Zettlr/ was verified as official when first introduced to the cask
  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}.dmg"
  appcast "https://github.com/Zettlr/Zettlr/releases.atom"
  name "Zettlr"
  homepage "https://www.zettlr.com/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
