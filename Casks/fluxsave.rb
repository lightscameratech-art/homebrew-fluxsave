cask "fluxsave" do
  version "1.5.0"
  sha256 "e1ecd9b6308056e300e8b86df48dadb8e60a5b91c8cd13f0f1d81ac460f42804"

  url "https://github.com/lightscameratech-art/fluxsave/releases/download/v#{version}/FluxSave-#{version}-Mac-arm64.dmg"
  name "FluxSave"
  desc "Download and process permitted online media"
  homepage "https://github.com/lightscameratech-art/fluxsave"

  depends_on arch: :arm64

  app "FluxSave.app"

  zap trash: [
    "~/Library/Application Support/FluxSave",
    "~/Library/Preferences/com.electron.fluxsave.plist",
    "~/Library/Saved Application State/com.electron.fluxsave.savedState",
  ]
end
