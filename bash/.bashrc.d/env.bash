# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export EDITOR="nvim"

eval "$(direnv hook bash)"

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

eval "$(scw autocomplete script shell=bash)"

