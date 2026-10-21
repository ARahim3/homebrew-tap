cask "digup" do
  version "0.6.2"
  sha256 "043033bdbe0c7c5fcb56545711c19d0ccf2cb9be58798d0e47f7c35e902cc5fd"

  url "https://github.com/ARahim3/DigUp/releases/download/v#{version}/DigUp-#{version}.dmg"
  name "DigUp"
  desc "On-device search by meaning for photos, PDFs, recordings, videos and code"
  homepage "https://github.com/ARahim3/DigUp"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DigUp.app"

  uninstall quit: "com.abdurrahim.DigUp"

  zap trash: [
    "~/Library/Application Support/DigUp",
    "~/Library/Caches/com.abdurrahim.DigUp",
    "~/Library/HTTPStorages/com.abdurrahim.DigUp",
    "~/Library/Preferences/com.abdurrahim.DigUp.plist",
    "~/Library/WebKit/com.abdurrahim.DigUp",
  ]
end
