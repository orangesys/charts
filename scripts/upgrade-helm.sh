#!/usr/bin/env bash
kubectl delete deployment --namespace kube-system tiller-deploy
curl -sSL http://storage.googleapis.com/kubernetes-helm/helm-v2.0.2-darwin-amd64.tar.gz|tar -xz
mv darwin-amd64/helm /usr/local/sbin/
helm init
sleep 5
helm version
