cask "handy" do
  version "0.8.1-fork"
  sha256 "337dad58229555f940be8dde4aff7625eb7a82023370b91ec8ac9156ad68e60c"

  url "https://github.com/gkachru/Handy/releases/download/v#{version}/Handy_0.8.1_aarch64.dmg",
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
