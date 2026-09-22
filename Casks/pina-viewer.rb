# Published verbatim to ayrapps/homebrew-tap by .github/workflows/release.yml.
# The version and sha256 lines are rewritten by sed — keep their exact shape
# (two-space indent, this word order). Everything here is public: English only.

cask "pina-viewer" do
  version "1.0.1"
  sha256 "4e996d97d937abbc85b088fa639bdc40d1596b87e029e3c9187f7adcea965c04"

  url "https://github.com/ayrapps/pina-viewer/releases/download/v#{version}/PinaViewer-#{version}.zip"
  name "Pina Viewer"
  desc "Keyboard-driven comic and image viewer for zip, cbz, rar, cbr and image folders"
  homepage "https://github.com/ayrapps/pina-viewer"

  depends_on macos: :ventura

  app "Pina Viewer.app"

  zap trash: [
    "~/.config/pina-viewer",
    "~/Library/Preferences/com.lynthey.pinaviewer.plist",
    "~/Library/Saved Application State/com.lynthey.pinaviewer.savedState",
  ]
end
