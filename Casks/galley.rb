cask "galley" do
  version "0.4"
  sha256 "b7baca4a556b6f3f62da53fdd48fb6111ae7ee1e1d50785ed8fe9125e98dae69"

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
  depends_on macos: :big_sur

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
