cask "handy-fork" do
  version "0.8.1-fork.4"
  sha256 "b2289519ab596336e4b327a9c8119baf7ad84208ba71db01e8e3f5ef555bcf24"

  url "https://github.com/gkachru/Handy/releases/download/v0.8.1-fork/Handy_0.8.1_aarch64.dmg",
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
