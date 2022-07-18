fpath=(~/.zsh $fpath)

source ~/.aliases

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

autoload -U compinit && compinit
autoload -U promptinit && promptinit

prompt felipec

setopt auto_cd
setopt inc_append_history

bindkey -e
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward
bindkey "\e[3~" delete-char
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history

precmd () {
	# Change the window title of X terminals
	# http://tldp.org/HOWTO/Xterm-Title-3.html
	print -Pn "\e]2;%2~\a"
}
