#!/bin/bash

magenta=$(tput setaf 5)
blue=$(tput setaf 4)
red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

export PS1="\[$reset\]╔ \[$magenta\]\u\[$reset\]@\[$blue\]\h\[$reset\] ═ \[$red\]\w\[$reset\]\\n╚ \$\[$reset\] "

