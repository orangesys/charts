#!/bin/bash

set -ex

_packagelist=(adduser influxdb traefik grafana kong postgres slack8s orangesys-srv orangeapi)
if [ $# -gt 0 ]; then
  _packagelist=("$@")
fi

for _d in "${_packagelist[@]}"
do
 rm -rf orangesys-io-charts/${_d}*.tgz
 rm -rf docs/${_d}.tgz
 helm package ${_d} && mv ${_d}*.tgz orangesys-io-charts/
 helm package ${_d} && mv ${_d}*.tgz docs/
done