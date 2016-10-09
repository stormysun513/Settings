#!/bin/bash

source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
export PS1="\[\e[0;31m\]\u\[\e[m\]@\[\e[0;33m\]MacbookPro\[\e[m:\e[0;34m\]\W/ \[\e[0;32m\]\$(__git_ps1)\[\e[m\]\$ "
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD


# No ttyctl, so we need to save and then restore terminal settings
vim() {
    # osx users, use stty -g; linux users use stty --save
    local STTYOPTS="$(stty -g)"
    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}

