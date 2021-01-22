# Brew tap for Halfpipe CLI 

https://github.com/springernature/halfpipe

This offers a formula for [Halfpipe](https://docs.halfpipe.io/docs/halfpipe-cli/). You can install `fly` via the standard cask.

## Install

```bash
brew install springernature/halfpipe/halfpipe

brew install fly # provided by the core brew repos
```

## Uninstall

```bash
brew untap springernature/halfpipe
brew uninstall halfpipe
```

## Updating formula

1. change version
2. d/l manually `wget the-url`
3. compute sha: `shasum -a 256 the-dl-file`
4. update sha in halfpipe.rb
