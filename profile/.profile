#!/usr/bin/env bash
export STOW_FOLDERS="nvim,git,personal,bash,profile,bin"
export DOTFILES="$HOME/.dotfiles"

if [ -e /home/hayden/.nix-profile/etc/profile.d/nix.sh ]; then . /home/hayden/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

