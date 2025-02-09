{{/*
Create a default fully qualified app name.
*/}}
{{- define "vertica-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a unique name for the release.
*/}}
{{- define "vertica-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "vertica-chart.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}