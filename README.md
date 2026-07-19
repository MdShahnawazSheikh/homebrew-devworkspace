# homebrew-devworkspace

Homebrew tap for [DevWorkspace](https://github.com/MdShahnawazSheikh/DevWorkspace) —
the ultimate context switcher for macOS.

> **Note:** the contents of this directory belong in a **separate** repository
> named `homebrew-devworkspace` (Homebrew requires the `homebrew-` prefix for
> tap repos). See the launch checklist in the main repo for how to publish it.

## Install

```sh
brew tap MdShahnawazSheikh/devworkspace
brew install --cask dev-workspace
```

## Update

```sh
brew update
brew upgrade --cask dev-workspace
```

## Uninstall

```sh
brew uninstall --cask dev-workspace
brew untap devworkspace/devworkspace
```

## How releases land here

The main repo's `release.yml` workflow updates `Casks/dev-workspace.rb`
automatically on every `v*.*.*` tag — bumping `version` and `sha256` to match
the new GitHub Release artifact. No manual editing required.
