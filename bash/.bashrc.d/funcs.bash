#!/bin/bash

increaseWatchers() {
  sudo sysctl fs.inotify.max_user_watches=65536
  sudo sysctl -p
}

restartSCD() {
  sudo systemctl restart pcscd
}

addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

