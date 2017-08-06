#!/bin/bash
set -ex
helm repo index orangesys-io-charts --url https://storage.googleapis.com/orangesys-io-charts
helm repo index docs --url https://orangesys.github.io/charts
