cask "ferry" do
  version "0.1.0"
  sha256 "300f738e6a333a95e5b5681c0f326f453df202dbaa9b557a77c00f3a56d453f4"

  url "https://github.com/Walker123t/ferry/releases/download/v#{version}/Ferry.dmg"
  name "Ferry"
  desc "Native Android file transfer (MTP) app"
  homepage "https://walker123t.github.io/ferry/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Ferry.app"

  zap trash: [
    "~/Library/Preferences/app.ferry.mac.plist",
    "~/Library/Saved Application State/app.ferry.mac.savedState",
  ]
end
