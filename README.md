# homebrew-tap

Homebrew tap for [DigUp](https://github.com/ARahim3/DigUp): search your Mac by what's in your files, on device, with
Google DeepMind's EmbeddingGemma 2.

## Install

```sh
brew install --cask arahim3/tap/digup
```

DigUp updates itself, so `brew upgrade` leaves it alone unless you add `--greedy`.

## Uninstall

```sh
brew uninstall --cask digup
```

Add `--zap` to also remove the downloaded model (about 865 MB), the index and the settings.

## Requirements

- macOS 14 (Sonoma) or later
- Apple Silicon
