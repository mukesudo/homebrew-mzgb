# homebrew-mzgb

Homebrew tap for [mzgb](https://github.com/mukesudo/mzgb) — fast CLI for filtering very large log files.

## Install

```bash
brew tap mukesudo/mzgb
brew install mzgb
```

## Usage

```bash
mzgb --level ERROR app.log
mzgb --pattern "timeout" -C 2 app.log
mzgb --summary app.log
kubectl logs pod/api | mzgb --level ERROR
```
