cask "handy" do
  version "0.8.1-fork"
  sha256 "0c2d8846a16ab2587c1235f20cc29760ab330bd8bc248875e3765f0e41b2c22e"

  url "https://github.com/gkachru/Handy/releases/download/v#{version}/Handy_0.8.1_aarch64.dmg"
  name "Handy"
  desc "Cross-platform desktop speech-to-text app (fork with system audio & Mistral streaming)"
  homepage "https://github.com/gkachru/Handy"

  depends_on arch: :arm64

  app "Handy.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Handy.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/Preferences/com.pais.handy.plist",
    "~/Library/Saved Application State/com.pais.handy.savedState",
  ]
end
