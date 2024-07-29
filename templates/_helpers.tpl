{{/* Labels */}}

{{- define "ataraxia.labels" -}}
app: {{ default $.Release.Name $.Values.name }}
{{- end -}}