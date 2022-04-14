#!/bin/bash
set -e

PREFIX="/usr/local/bin"
WORKDIR="/tmp"

echo 'installing tools...'
echo 'this script will request sudo privileges at multiple stages'

cd $WORKDIR

function separator() {
  echo "================================================="
}

separator

echo 'installing minikube...'

if [[ ! -x "$(command -v minikube)" ]]; then
  minikube_dl="https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64"
  curl -LO $minikube_dl
  sudo install minikube-linux-amd64 $PREFIX/minikube
fi

separator

echo 'installing kubectl'

if [[ ! -x "$(command -v kubectl)" ]]; then
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  sudo install kubectl $PREFIX/kubectl
fi

separator

echo 'installing kind'
echo 'TODO'

separator

echo 'installing minishift'
echo 'TODO'

if [[ ! -x "$(command -v minishift)" ]]; then
  ver="1.34.3"
  sudo dnf install libvirt qemu-kvm -y
  sudo usermod -aG libvirt $(whoami) || true
  newgrp libvirt
  curl -L https://github.com/dhiltgen/docker-machine-kvm/releases/download/v0.10.0/docker-machine-driver-kvm-centos7 -o /usr/local/bin/docker-machine-driver-kvm
  chmod +x /usr/local/bin/docker-machine-driver-kvm
  sudo systemctl start libvirtd

  curl -L "https://github.com/minishift/minishift/releases/download/v$ver/minishift-$ver-linux-amd64.tgz" | tar -xz
  sudo install minishift-$ver-linux-amd64/minishift $PREFIX/minishift
  sudo chmod +x $PREFIX/minishift
fi

separator

echo 'done!'

