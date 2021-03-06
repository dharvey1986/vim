# Colouring of the terminal
PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs

__prompt_command() {
    local EXIT="$?"             # This needs to be first
    PS1=""

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    if [ $EXIT != 0 ]; then
        PS1+="${Red}\u${RCol}"      # Add red if exit code non 0
    else
        PS1+="${Gre}\u${RCol}"
    fi

    PS1+="${RCol}@${BBlu}\h:${BYel}\w${BYel} $ ${RCol}"
}
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Linux-like alias
alias xclip='pbcopy'

alias ls='ls -GFh'
alias ll='ls -lGFh'
alias g++='/usr/bin/g++ --std=c++1y'
alias rmswp='rm $(find -regex .*swp$)'
