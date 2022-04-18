#!/bin/bash

export PS1=""

# returns the current git branch
function git_branch() {
  git branch --show-current
}

bgreen="$(tput setaf 10)"
green="$(tput setaf 2)"
blue="$(tput setaf 4)"

gray="$(tput setaf 8)"

reset="$(tput sgr0)"

ps1="$green\u"
ps1="$ps1$reset@"
ps1="$ps1$blue\h"
ps1="$ps1 $gray\W"
ps1="$ps1 $bgreen($(git_branch))"
ps1="$ps1 $reset\$ "

export PS1="$ps1"

#export PS1="$green\u$reset@$blue\h $gray\W $bgreen($(git_branch)) $reset\$ "

