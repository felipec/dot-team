source ~/.rc

if [[ -r /usr/share/bash-completion/completions/git ]]; then
  source /usr/share/bash-completion/completions/git
  __git_complete g git
  __git_complete c git
fi

# Dummy version of __git_ps1
declare -f __git_ps1 > /dev/null || __git_ps1 () {}

PS1='\[\e[1;34m\]\h\[\e[m\] \w$(__git_ps1 "[%s]") \[\e[0;32m\]\$\[\e[m\] '

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
