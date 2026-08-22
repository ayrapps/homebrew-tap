# Published verbatim to lynthey/homebrew-tap by .github/workflows/release.yml.
# The version and sha256 lines are rewritten by sed — keep their exact shape
# (two-space indent, this word order). Everything here is public: English only.

cask "pina-viewer" do
  version "1.0.0"
  sha256 "4fcc8f4a64ba22125b06b34adc5453754a2a6641b5d5f54db15604545f2fe8b8"

  url "https://github.com/lynthey/pina-viewer/releases/download/v#{version}/PinaViewer-#{version}.zip"
  name "Pina Viewer"
  desc "Keyboard-driven comic and image viewer for zip, cbz, rar, cbr and image folders"
  homepage "https://github.com/lynthey/pina-viewer"

  depends_on macos: :ventura

  app "Pina Viewer.app"

  zap trash: [
    "~/.config/pina-viewer",
    "~/Library/Preferences/com.lynthey.pinaviewer.plist",
    "~/Library/Saved Application State/com.lynthey.pinaviewer.savedState",
  ]
end
