# homebrew-tap

[![CI](https://github.com/channprj/homebrew-tap/actions/workflows/ci.yml/badge.svg)](https://github.com/channprj/homebrew-tap/actions/workflows/ci.yml)

Homebrew tap. Written by chann.

## Install

```bash
brew tap channprj/tap
brew install channprj/tap/pdf-to-typst
brew install channprj/tap/pdf-to-typst@0.260323.3
brew install channprj/tap/kmsg
brew install channprj/tap/stt-cli
```

## stt-cli

`stt-cli` builds from a pinned release tag and commit in the private
`channprj/stt-cli` repository. Installs and upgrades require read access and
authenticated Git. If using GitHub CLI, authenticate before installing:

```bash
gh auth login
gh auth setup-git
brew install channprj/tap/stt-cli
stt-cli --version
```

Homebrew installs Rust as a build dependency. Install `ffmpeg` separately if
you want to use optional `--vad` processing.

Update stable installations with:

```bash
brew update
brew upgrade channprj/tap/stt-cli
```

To migrate an existing `--HEAD` installation to a stable release:

```bash
brew uninstall channprj/tap/stt-cli
brew install channprj/tap/stt-cli
```

Uninstalling the formula preserves the CLI's configuration. For unreleased
`main`, use `brew install --HEAD channprj/tap/stt-cli`; update that installation
with `brew reinstall channprj/tap/stt-cli`.

## kmsg Versioned Installs

<!-- kmsg-versioned:start -->
Install the latest release or pin an exact kmsg release from this tap.

```bash
brew install channprj/tap/kmsg
brew install channprj/tap/kmsg@1.260819.1
```

Recent 10 releases are kept in this tap:

- `kmsg@1.260819.1`
- `kmsg@1.260819.0`
- `kmsg@1.260817.0`
- `kmsg@1.260729.0`
- `kmsg@1.260726.0`
- `kmsg@1.260705.0`
- `kmsg@1.260618.0`
- `kmsg@1.260606.1`
- `kmsg@1.260606.0`
- `kmsg@1.260424.0`
<!-- kmsg-versioned:end -->
