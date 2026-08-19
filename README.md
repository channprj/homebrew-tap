# homebrew-tap

[![CI](https://github.com/channprj/homebrew-tap/actions/workflows/ci.yml/badge.svg)](https://github.com/channprj/homebrew-tap/actions/workflows/ci.yml)

Homebrew tap. Written by chann.

## Install

```bash
brew tap channprj/tap
brew install channprj/tap/pdf-to-typst
brew install channprj/tap/pdf-to-typst@0.260323.3
brew install channprj/tap/kmsg
brew install --HEAD channprj/tap/stt-cli
```

`stt-cli` builds from a private source repository, so it has no stable
tarball and installs from a git clone — `--HEAD` is required, and you need
read access to `channprj/stt-cli`.

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
