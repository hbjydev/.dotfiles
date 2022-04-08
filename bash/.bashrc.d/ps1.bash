#!/bin/bash

magenta=$(tput setaf 5)
blue=$(tput setaf 4)
red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)
gray=$(tput setaf $(fromhex '#333333'))

export PS1="\[$gray\]╔[\[$blue\]\u\[$reset\]@\[$green\]\h\[$gray\]]═[\[$red\]\w\[$gray\]]\\n╚\$\[$reset\] "

