cask "galley" do
  version "0.8"
  sha256 "9c712648897a8f6900129cab2eec81627b3589d426dcd18f59e89dfa39adb0a9"

  url "https://github.com/munepi/Galley/releases/download/v#{version}/GalleyPDF_#{version}.dmg"
  name "Galley"
  name "Galley PDF"
  desc "Lightweight PDF previewer with SyncTeX support for TeX authors"
  homepage "https://github.com/munepi/Galley/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "GalleyPDF.app"
  # Shipped inside the bundle so pkg/DMG and source installs get the same
  # command; the emacsclient layout, built from Sources/GalleyPDFCLI.
  binary "#{appdir}/GalleyPDF.app/Contents/MacOS/bin/galleypdf"

  zap trash: [
    "~/Library/Application Support/com.github.munepi.galley",
    "~/Library/Caches/com.github.munepi.galley",
    "~/Library/HTTPStorages/com.github.munepi.galley",
    "~/Library/Preferences/com.github.munepi.galley.plist",
    "~/Library/Saved Application State/com.github.munepi.galley.savedState",
  ]
end
