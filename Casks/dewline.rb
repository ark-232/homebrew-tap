cask "dewline" do
  version "0.7.2,255"
  sha256 "b1267a2fe675e362060c57f9446dfb12fcd5fa34b5cb5e01dbc983c86182700a"

  url "https://github.com/Dewline-ArkWerx-LLC/dewline/releases/download/v#{version.csv.first}/Dewline-#{version.csv.first}.dmg"
  name "Dewline"
  desc "Native Markdown editor for plain files and Obsidian vaults"
  homepage "https://dewline.arkwerx.com/"

  livecheck do
    url "https://dewline.arkwerx.com/appcast.xml"
    strategy :sparkle do |items|
      item = items.find { |i| i.channel.nil? }
      "#{item.short_version},#{item.version}" if item
    end
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Dewline.app"
  binary "#{appdir}/Dewline.app/Contents/Helpers/dewline"

  zap trash: [
    "~/Library/Application Support/dev.arkwerx.dewline",
    "~/Library/Preferences/dev.arkwerx.dewline.plist",
  ]
end
