# brew tap for half pipe cli 

https://github.com/springernature/halfpipe

This offers both a forumula for [Halfpipe](https://docs.halfpipe.io/docs/halfpipe-cli/) and a convience forumla for [Concourse's Fly](https://docs.halfpipe.io/docs/concourse/).

## Install

```bash
brew tap springernature/halfpipe
brew install halfpipe fly
```

## Uninstall

```bash
brew untap springernature/halfpipe
brew uninstall halfpipe fly
```

## updating formula

1. change version
2. d/l manually `wget the-url`
3. compute sha: `shasum -a 256 the-dl-file`
4. update sha in halfpipe.rb
