# Homebrew Tap for Handy

Custom fork of [Handy](https://handy.computer/) — a desktop speech-to-text app — with system audio capture, Mistral realtime streaming transcription, and live translation.

**macOS Apple Silicon (M1+) only. Requires macOS Ventura or later.**

## Install

```bash
brew tap gkachru/handy
brew install --cask handy
```

> If you have the official Handy cask installed, uninstall it first:
> `brew uninstall --cask handy`

## Update

```bash
brew upgrade --cask handy
```

## Uninstall

```bash
brew uninstall --cask handy
```

To also remove app data and caches:

```bash
brew uninstall --cask --zap handy
```

## Remove the tap

```bash
brew untap gkachru/handy
```
