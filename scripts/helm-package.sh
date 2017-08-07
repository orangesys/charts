#!/bin/bash

set -e
rm -rf docs/${_d}.tgz

_packagelist=(influxdb traefik grafana kong postgres slack8s orangeapi kube-cert-manager kubebot)
if [ $# -gt 0 ]; then
  _packagelist=("$@")
fi

for _d in "${_packagelist[@]}"
do
 #rm -rf orangesys-io-charts/${_d}*.tgz
 #helm package ${_d} && mv ${_d}*.tgz orangesys-io-charts/
 helm package ${_d} && mv ${_d}*.tgz docs/
done
