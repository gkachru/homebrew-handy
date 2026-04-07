cask "handy-fork" do
  version "0.8.2"
  sha256 "e137d87e70386ddddbb9cc255d9864cd0653bf7bb8dd4d6ed1c3865b466d5f4f"

  url "https://github.com/gkachru/Handy/releases/download/v0.8.2/Handy_0.8.2_aarch64.dmg",
      verified: "github.com/gkachru/Handy/"
  name "Handy"
  desc "Speech to text application (fork with system audio & Mistral streaming)"
  homepage "https://github.com/gkachru/Handy"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Handy.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Handy.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
