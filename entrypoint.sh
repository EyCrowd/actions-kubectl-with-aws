#!/bin/sh

set -e

if [ ! -d "$HOME/.kube" ]; then
    mkdir -p $HOME/.kube
fi

echo "/usr/local/bin/kubectl" >> $GITHUB_PATH
echo "/usr/local/bin/aws" >> $GITHUB_PATH

kubectl $*
