#!/bin/bash

set -e
rm -rf docs/${_d}.tgz

_packagelist=(influxdb grafana)
if [ $# -gt 0 ]; then
  _packagelist=("$@")
fi

for _d in "${_packagelist[@]}"
do
 helm package ${_d} && mv ${_d}*.tgz docs/
done
