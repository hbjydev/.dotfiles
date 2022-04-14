#!/bin/bash

magenta=$(tput setaf 5)
blue=$(tput setaf 4)
red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

function gitbranch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[$reset\]$(tput dim)╔ $(tput sgr0)$(tput bold)\[$magenta\]\u\[$reset\]@\[$magenta\]$(tput bold)\h \[$red\]\W \[$green\]\$(gitbranch)\[$reset\]\\n$(tput dim)╚ \$\[$reset\] "

