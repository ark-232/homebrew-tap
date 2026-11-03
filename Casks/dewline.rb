cask "dewline" do
  version "0.1.0"
  sha256 "d3dd778513b81ff3f6fa87a7defa4f6536c5e3811c240d53b2d078e123689fed"

  url "https://github.com/ark-232/dewline/releases/download/v#{version.csv.first}/Dewline-#{version.csv.first}.dmg"
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
