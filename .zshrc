fpath=(~/.zsh $fpath)

source ~/.rc

alias git='noglob git'

HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000

autoload -U compinit && compinit

autoload -U promptinit && promptinit
prompt felipec

setopt inc_append_history

bindkey -e
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward
bindkey "\e[3~" delete-char
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history

# console
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select yes=long

hash -d dot=~/.local/share/dot-files

precmd () {
	# Change the window title of X terminals
	# http://tldp.org/HOWTO/Xterm-Title-3.html
	print -Pn "\e]2;%2~\a"
}
