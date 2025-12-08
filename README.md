# Brew tap for Halfpipe CLI 

https://github.com/springernature/halfpipe

This offers a formula for [Halfpipe](https://docs.halfpipe.io/docs/halfpipe-cli/). You can install `fly` [from the web interface](https://springernature.jfrog.io/artifactory/halfpipe/halfpipe_darwin_).

## Install

```bash
brew install springernature/halfpipe/halfpipe
```

## Uninstall

```bash
brew untap springernature/halfpipe
brew uninstall halfpipe
```

## Updating formula

1. Update the version number in the formula
2. Use the URI from the formula to download the file, e.g. `curl -Lo halfpipe https://springernature.jfrog.io/artifactory/halfpipe/halfpipe_darwin_<version number>`
3. Computer the SHA: `shasum -a 256 halfpipe`
4. Update sha in `halfpipe.rb`
5. Clean up: `rm -f halfpipe`
