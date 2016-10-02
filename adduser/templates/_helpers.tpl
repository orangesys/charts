{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{define "name"}}
{{- default .Chart.Name .Values.nameOverride | trunc 24 -}}
{{end}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this
(by the DNS naming spec).
*/}}
{{define "fullname"}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{printf "%s-%s" .Release.Name $name | trunc 24 -}}
{{end}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "influxdb.fullname" -}}
{{- printf "%s-%s" .Release.Name "influxdb" | trunc 24 -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "grafana.fullname" -}}
{{- printf "%s-%s" .Release.Name "grafana" | trunc 24 -}}
{{- end -}}
