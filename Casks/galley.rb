cask "galley" do
  version "0.10"
  sha256 "be59307ac3449b4b17b232464adda0a2b2bedaf000c42ac35c949ad03e47ecbb"

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
