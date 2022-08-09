source ~/.rc

if [[ -r /usr/share/bash-completion/completions/git ]]; then
  source /usr/share/bash-completion/completions/git
  __git_complete g git
  __git_complete c git
fi

PS1='\h \[\e[1;34m\]\w\[\e[m\] \[\e[32m\]❯\[\e[m\] '

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
