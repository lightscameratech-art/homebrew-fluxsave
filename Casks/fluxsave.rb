cask "fluxsave" do
  version "1.5.1"
  sha256 "f0d40f704c77b69e1325730c4e374fb60c18efa5aa47c0835be257cbe16f3a50"

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
