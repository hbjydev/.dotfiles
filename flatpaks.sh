#!/bin/bash
set -e

echo "installing flathub repo..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "installing required flatpaks..."
to_install=(
  "com.discordapp.Discord"
  "sh.cider.Cider"
  "com.microsoft.Teams"
)

for pak in "${to_install[@]}"
do
  echo "+ flatpak install $pak"
  flatpak install -y --noninteractive "$pak"
done

