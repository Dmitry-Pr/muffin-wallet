{{/*
Expand the name of the chart.
*/}}
{{- define "muffin-wallet.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "muffin-wallet.fullname" -}}
{{- $name := .Chart.Name }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "muffin-wallet.labels" -}}
app: {{ include "muffin-wallet.name" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "muffin-wallet.selectorLabels" -}}
app: {{ include "muffin-wallet.name" . }}
{{- end }}