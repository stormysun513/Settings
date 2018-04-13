# ~/.bashrc: executed by bash(1) for non-login shells.

#!/usr/bin/env bash

# .bashrc is executed when terminal is started after login

GIT_PROMPT_URL="https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh"
VUNDLE_URL="https://github.com/VundleVim/Vundle.vim.git"

# No ttyctl while using vim, so we need to save and then restore terminal settings
vim() {
    # osx users, use stty -g; linux users use stty --save
    local STTYOPTS=
    case "$(uname -s)" in
        Darwin)
            STTYOPTS="$(stty -g)"
            ;;

        Linux)
            STTYOPTS="$(stty --save)"
            ;;

        # Add here more strings to compare
        # See correspondence table at the bottom of this answer
        *)
            ;;
    esac

    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}

# Download git-prompt setting file
if [ ! -e $HOME/.config ];
then
    mkdir $HOME/.config
fi
if [ ! -e $HOME/.config/git-prompt.sh ];
then
    curl -s -o $HOME/.config/git-prompt.sh $GIT_PROMPT_URL > /dev/null
fi
source $HOME/.config/git-prompt.sh
vim ~/.ca   
# download sim package management tool
if [ ! -e $HOME/.vim/bundle/Vundle.vim ];
then
    git clone $VUNDLE_URL ~/.vim/bundle/Vundle.vim
fi

# Setup terminal preference
#export TERM=xterm-256color
export PS1="\[\e[0;31m\]\u\[\e[m\]@\[\e[0;33m\]\h\[\e[m:\e[0;34m\]\W/\[\e[0;32m\]\$(__git_ps1)\[\e[m\]\$ "
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export EDITOR=vim

# Export path
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH="$JAVA_HOME/bin:$PATH"
# export PIP_REQUIRE_VIRTUALENV=true

# Command alias 
alias cscope="cscope -Rp5"
alias xclip="xclip -selection c"
alias tmux="tmux -2"

# Load keys required for software development
if [ -f $HOME/.config/devkey ];
then
    source $HOME/.config/devkey
fi
