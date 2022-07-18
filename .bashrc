source ~/.rc

PS1='\[\e[1;34m\]\h\[\e[m\] \w \[\e[0;32m\]\$\[\e[m\] '

# Change the window title of X terminals
PROMPT_COMMAND='echo -ne "\e]2;${PWD/#$HOME/\~}\a"'
