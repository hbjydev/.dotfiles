#!/usr/bin/env bash
export STOW_FOLDERS="nvim,git,personal,bash,profile,bin"
export DOTFILES="$HOME/.dotfiles"

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -e /home/hayden/.nix-profile/etc/profile.d/nix.sh ]; then . /home/hayden/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
