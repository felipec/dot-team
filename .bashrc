source ~/.rc

if [[ -r /usr/share/bash-completion/completions/git ]]; then
  source /usr/share/bash-completion/completions/git
  __git_complete g git
  __git_complete c git
fi

PS1='\[\e[1;34m\]\h\[\e[m\] \w \[\e[0;32m\]\$\[\e[m\] '

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
