cask "dewline" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/ark-232/dewline/releases/download/v#{version.csv.first}/Dewline-#{version.csv.first}.dmg"
  name "Dewline"
  desc "Markdown editor that shows what agents changed"
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
