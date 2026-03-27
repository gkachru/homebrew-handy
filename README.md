# Handy (fork)

A desktop speech-to-text app for Mac with system audio capture, live transcription, and translation.

**Requirements:** Mac with Apple Silicon (M1 or later) running macOS Ventura or later.

---

## Getting started

### 1. Open Terminal

Press **Cmd + Space**, type **Terminal**, and hit Enter.

You'll use this app to run the commands below. Copy each command, paste it into Terminal, and press Enter.

### 2. Install Homebrew (if you don't have it)

Homebrew is a package manager that makes it easy to install apps on Mac. Paste this into Terminal:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

It will ask for your Mac password (you won't see characters as you type — that's normal). Follow the on-screen instructions.

When it finishes, **close and reopen Terminal** before continuing.

### 3. Install Handy

Run these two commands one at a time:

```bash
brew tap gkachru/handy
```

```bash
brew install --cask handy
```

That's it! You'll find **Handy** in your Applications folder. You can also open it with Spotlight (Cmd + Space, type "Handy").

On first launch, macOS will ask for **Microphone** and **Accessibility** permissions — grant both.

---

## Updating

To update to the latest version:

```bash
brew update
brew upgrade --cask handy
```

---

## Uninstalling

To remove the app:

```bash
brew uninstall --cask handy
```

To also remove all app data and settings:

```bash
brew uninstall --cask --zap handy
```

To remove the tap (stops future updates):

```bash
brew untap gkachru/handy
```

---

## Troubleshooting

**"handy: command not found" or "brew: command not found"**
Close Terminal and reopen it, then try again.

**"You already have the official Handy cask installed"**
Run `brew uninstall --cask handy` first, then install again with the commands above.

**App won't open / "damaged" warning**
Run this to fix it:
```bash
xattr -cr /Applications/Handy.app
```
