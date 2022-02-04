source ~/.rc

test -r /usr/share/bash-completion/completions/git &&
source /usr/share/bash-completion/completions/git

PS1='\[\e[1;34m\]\h\[\e[m\] \w \[\e[0;32m\]\$\[\e[m\] '

# Change the window title of X terminals
PROMPT_COMMAND="$PROMPT_COMMAND; "'echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
