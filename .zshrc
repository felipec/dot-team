source ~/.aliases

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=50000

setopt autocd
setopt extendedglob
setopt nomatch

autoload -U compinit && compinit
