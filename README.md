<p align="center">
  <a href="https://dewline.arkwerx.com">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/Dewline-ArkWerx-LLC/.github/main/profile/lockup-dark.svg">
      <img src="https://raw.githubusercontent.com/Dewline-ArkWerx-LLC/.github/main/profile/lockup.svg" alt="Dewline" width="280">
    </picture>
  </a>
</p>

# Homebrew tap

The Homebrew tap for [Dewline](https://dewline.arkwerx.com), a native Markdown editor for Mac.

## Install

```sh
brew install --cask ark-232/tap/dewline
```

The cask installs Dewline.app and links the `dewline` command onto your PATH. It needs macOS 26 or later.

Dewline updates itself, so `brew upgrade` skips it unless you pass `--greedy`.

## Uninstall

```sh
brew uninstall --cask dewline
```

Add `--zap` to also remove its settings and Application Support folder. Your notes are never touched.

## Links

[Site](https://dewline.arkwerx.com) · [Docs](https://dewline.arkwerx.com/docs/) · [Source](https://github.com/Dewline-ArkWerx-LLC/dewline) · [Releases](https://github.com/Dewline-ArkWerx-LLC/dewline/releases)

The release workflow in [Dewline-ArkWerx-LLC/dewline](https://github.com/Dewline-ArkWerx-LLC/dewline) bumps `Casks/dewline.rb` by pull request. Published by ArkWerx LLC.
