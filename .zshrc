source ~/.aliases

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=50000

setopt autocd
setopt extendedglob
setopt nomatch

autoload -U compinit && compinit

PS1='%F{blue}%B%m%b%f %F{white}%~%f %F{green}%#%f '
