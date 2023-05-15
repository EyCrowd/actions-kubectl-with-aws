#!/bin/sh

set -e

if [ ! -d "$HOME/.kube" ]; then
    mkdir -p $HOME/.kube
fi

export KUBECONFIG=$HOME/.kube/config


if [ ! -z $EKS_NAME ];then
  aws eks update-kubeconfig --region $AWS_REGION --name $EKS_NAME
fi

echo "/usr/local/bin/kubectl" >> $GITHUB_PATH
echo "/usr/local/bin/aws" >> $GITHUB_PATH

kubectl $*
