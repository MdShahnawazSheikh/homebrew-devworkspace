cask "dev-workspace" do
  version "1.0.0"
  sha256 "f630976cde50a1e984a9493e43b5ced0aefa8d56bec0bf0dad54c5c322ea690c"

  url "https://github.com/MdShahnawazSheikh/DevWorkspace/releases/download/v#{version}/DevWorkspace.zip"
  name "DevWorkspace"
  desc "One-click dev environment launcher, env var vault, and ports cleaner for macOS"
  homepage "https://github.com/MdShahnawazSheikh/DevWorkspace"

  depends_on macos: :ventura

  app "DevWorkspace.app"

  zap trash: [
    "~/Library/Application Support/DevWorkspace",
    "~/Library/Preferences/com.devworkspace.app.plist",
  ]

  caveats <<~EOS
    DevWorkspace stores your .env values in the macOS Keychain and drives your
    terminal/editor via Automation — approve those prompts on first use.

    If this build isn't signed with a Developer ID yet, macOS may block it on
    first launch. Right-click the app in Applications and choose Open, or run:
      xattr -cr "#{appdir}/DevWorkspace.app"
  EOS
end
