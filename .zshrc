source ~/.aliases

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

setopt auto_cd
setopt inc_append_history

autoload -U compinit && compinit

PS1='%F{blue}%B%m%b%f %F{white}%~%f %F{green}%#%f '

bindkey -e
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

precmd () {
	# Change the window title of X terminals
	# http://tldp.org/HOWTO/Xterm-Title-3.html
	print -Pn "\e]2;%2~\a"
}
