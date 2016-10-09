#!/bin/bash

set -e

_packagelist=(influxdb traefik grafana kong postgres slack8s)
if [ $# -gt 0 ]; then
  _packagelist=("$@")
fi

for _d in "${_packagelist[@]}"
do
 rm -rf  orangesys-charts/${_d}
 helm package ${_d} && mv ${_d}*.tgz orangesys-charts/
done
